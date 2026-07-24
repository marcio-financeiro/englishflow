// Vercel Cron: dispara às 20h (horário de Brasília) — ver vercel.json.
// Manda um push para quem ainda não estudou hoje e tem lembrete ativado.
//
// Env vars necessárias (Vercel → Project Settings → Environment Variables):
//   SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY
//   VAPID_PUBLIC_KEY, VAPID_PRIVATE_KEY, VAPID_SUBJECT (ex: mailto:voce@email.com)
//   CRON_SECRET (Vercel envia isso automaticamente como Bearer token nos crons
//     quando essa env var existe — ver docs do Vercel Cron)

import { createClient } from '@supabase/supabase-js';
import webpush from 'web-push';

function hojeBrasiliaISO() {
  // Brasília é UTC-3 o ano todo (sem horário de verão desde 2019).
  const now = new Date(Date.now() - 3 * 60 * 60 * 1000);
  return now.toISOString().slice(0, 10);
}

export default async function handler(req, res) {
  const authHeader = req.headers.authorization ?? '';
  if (authHeader !== `Bearer ${process.env.CRON_SECRET}`) {
    return res.status(401).json({ error: 'Não autorizado' });
  }

  const supabase = createClient(
    process.env.SUPABASE_URL,
    process.env.SUPABASE_SERVICE_ROLE_KEY
  );

  webpush.setVapidDetails(
    process.env.VAPID_SUBJECT,
    process.env.VAPID_PUBLIC_KEY,
    process.env.VAPID_PRIVATE_KEY
  );

  const today = hojeBrasiliaISO();

  const { data: profiles, error: profilesError } = await supabase
    .from('profiles')
    .select('id')
    .or(`last_study_date.is.null,last_study_date.neq.${today}`);

  if (profilesError) {
    return res.status(500).json({ error: profilesError.message });
  }

  const pendingIds = (profiles ?? []).map((p) => p.id);
  if (pendingIds.length === 0) {
    return res.status(200).json({ sent: 0, reason: 'todos já estudaram hoje' });
  }

  const { data: subscriptions, error: subsError } = await supabase
    .from('push_subscriptions')
    .select('id, endpoint, p256dh, auth, user_id')
    .in('user_id', pendingIds);

  if (subsError) {
    return res.status(500).json({ error: subsError.message });
  }

  const payload = JSON.stringify({
    title: 'EnglishFlow 🔥',
    body: 'Você ainda não estudou hoje — que tal uma lição rápida?',
  });

  let sent = 0;
  const expiredIds = [];

  await Promise.all(
    (subscriptions ?? []).map(async (sub) => {
      try {
        await webpush.sendNotification(
          {
            endpoint: sub.endpoint,
            keys: { p256dh: sub.p256dh, auth: sub.auth },
          },
          payload
        );
        sent++;
      } catch (err) {
        // 404/410 = inscrição expirada/revogada no navegador — limpa do banco.
        if (err.statusCode === 404 || err.statusCode === 410) {
          expiredIds.push(sub.id);
        }
      }
    })
  );

  if (expiredIds.length > 0) {
    await supabase.from('push_subscriptions').delete().in('id', expiredIds);
  }

  return res.status(200).json({ sent, expired: expiredIds.length });
}
