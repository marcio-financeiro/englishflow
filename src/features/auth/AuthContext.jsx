import { createContext, useContext, useEffect, useState } from 'react';
import { supabase } from '../../services/supabaseClient';

const AuthContext = createContext(null);

async function ensureProfile(user) {
  const { data: existing, error: selectError } = await supabase
    .from('profiles')
    .select('*')
    .eq('id', user.id)
    .maybeSingle();

  if (selectError) throw selectError;
  if (existing) return existing;

  const { data: created, error: insertError } = await supabase
    .from('profiles')
    .insert({ id: user.id, display_name: user.email })
    .select()
    .single();

  if (insertError) throw insertError;
  return created;
}

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [loading, setLoading] = useState(true);

  async function loadUserAndProfile(sessionUser) {
    setUser(sessionUser);
    if (sessionUser) {
      const profileRow = await ensureProfile(sessionUser);
      setProfile(profileRow);
    } else {
      setProfile(null);
    }
  }

  useEffect(() => {
    supabase.auth.getSession().then(async ({ data: { session } }) => {
      await loadUserAndProfile(session?.user ?? null);
      setLoading(false);
    });

    const { data: subscription } = supabase.auth.onAuthStateChange(
      async (_event, session) => {
        await loadUserAndProfile(session?.user ?? null);
      }
    );

    return () => subscription.subscription.unsubscribe();
  }, []);

  async function signIn(email, password) {
    const { error } = await supabase.auth.signInWithPassword({ email, password });
    if (error) throw error;
  }

  async function signUp(email, password) {
    const { error } = await supabase.auth.signUp({ email, password });
    if (error) throw error;
  }

  async function signOut() {
    await supabase.auth.signOut();
  }

  async function refreshProfile() {
    if (!user) return;
    const profileRow = await ensureProfile(user);
    setProfile(profileRow);
  }

  return (
    <AuthContext.Provider
      value={{ user, profile, loading, signIn, signUp, signOut, refreshProfile }}
    >
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error('useAuth must be used within AuthProvider');
  return ctx;
}
