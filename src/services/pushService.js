import { supabase } from './supabaseClient';

// Chave pública VAPID — segura para expor no client (é assim que o Web Push
// funciona: a privada fica só no servidor que envia as notificações).
const VAPID_PUBLIC_KEY =
  'BIx4zF_jSHjsaFP5inSt4YufboDXmgutMjUvqf-prvGyLhD9gLT4RhUNhsH7setEOxgxajreNXedsEp4XfQnMs4';

export function isPushSupported() {
  return (
    typeof window !== 'undefined' &&
    'serviceWorker' in navigator &&
    'PushManager' in window &&
    'Notification' in window
  );
}

export function pushPermission() {
  return isPushSupported() ? Notification.permission : 'unsupported';
}

function urlBase64ToUint8Array(base64String) {
  const padding = '='.repeat((4 - (base64String.length % 4)) % 4);
  const base64 = (base64String + padding).replace(/-/g, '+').replace(/_/g, '/');
  const raw = atob(base64);
  return Uint8Array.from([...raw].map((c) => c.charCodeAt(0)));
}

// Pede permissão, inscreve no push manager e salva a inscrição no Supabase.
export async function enableReminders(userId) {
  if (!isPushSupported()) throw new Error('Notificações não suportadas neste navegador.');

  const permission = await Notification.requestPermission();
  if (permission !== 'granted') {
    throw new Error('Permissão de notificação negada.');
  }

  const registration = await navigator.serviceWorker.ready;
  const subscription = await registration.pushManager.subscribe({
    userVisibleOnly: true,
    applicationServerKey: urlBase64ToUint8Array(VAPID_PUBLIC_KEY),
  });

  const json = subscription.toJSON();
  const { error } = await supabase.from('push_subscriptions').upsert(
    {
      user_id: userId,
      endpoint: json.endpoint,
      p256dh: json.keys.p256dh,
      auth: json.keys.auth,
    },
    { onConflict: 'endpoint' }
  );
  if (error) throw error;
}

// Cancela a inscrição no navegador e remove do Supabase.
export async function disableReminders() {
  if (!isPushSupported()) return;

  const registration = await navigator.serviceWorker.ready;
  const subscription = await registration.pushManager.getSubscription();
  if (!subscription) return;

  const endpoint = subscription.endpoint;
  await subscription.unsubscribe();
  await supabase.from('push_subscriptions').delete().eq('endpoint', endpoint);
}

// Verifica se este dispositivo já está inscrito (para refletir o estado do botão).
export async function isSubscribed() {
  if (!isPushSupported()) return false;
  const registration = await navigator.serviceWorker.ready;
  const subscription = await registration.pushManager.getSubscription();
  return !!subscription;
}
