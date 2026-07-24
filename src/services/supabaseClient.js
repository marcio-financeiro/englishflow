import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error('Missing VITE_SUPABASE_URL or VITE_SUPABASE_ANON_KEY in .env');
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

// Extrai a mensagem real de um erro de `supabase.functions.invoke(...)`.
// error.context é o Response da Edge Function — lemos como texto (só dá pra
// ler o corpo uma vez) e tentamos parsear como JSON `{ error }`. Se a função
// nem chegou a rodar (crash de boot, timeout, página de erro da plataforma),
// o corpo não é JSON — nesse caso devolvemos o texto cru em vez da mensagem
// genérica "Edge Function returned a non-2xx status code", que não ajuda a
// diagnosticar nada.
export async function functionErrorMessage(error) {
  const raw = await error?.context
    ?.text?.()
    .catch(() => null);
  if (!raw) return error?.message ?? 'Erro desconhecido';
  try {
    const parsed = JSON.parse(raw);
    return parsed?.error || raw;
  } catch {
    return raw.slice(0, 300) || error.message;
  }
}
