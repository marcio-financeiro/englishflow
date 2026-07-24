// Service worker do EnglishFlow (PWA).
// Estratégia simples e segura:
//  - navegação (abrir páginas): network-first, cai no cache se offline
//  - assets estáticos same-origin: stale-while-revalidate
//  - requisições a APIs externas (Supabase/Anthropic) e não-GET: nunca cacheadas
//
// Ao mudar esta lógica ou o app shell, incremente CACHE_VERSION.
const CACHE_VERSION = 'ef-v10';
const APP_SHELL = ['/', '/manifest.json', '/icons/icon-192.png'];

self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_VERSION).then((cache) => cache.addAll(APP_SHELL))
  );
  self.skipWaiting();
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches
      .keys()
      .then((keys) =>
        Promise.all(keys.filter((k) => k !== CACHE_VERSION).map((k) => caches.delete(k)))
      )
      .then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', (event) => {
  const { request } = event;

  // Só GET e só mesma origem (nunca cachear Supabase/Anthropic).
  if (request.method !== 'GET' || new URL(request.url).origin !== self.location.origin) {
    return;
  }

  // Navegação: network-first (pega deploy novo), cai no cache offline.
  if (request.mode === 'navigate') {
    event.respondWith(
      fetch(request)
        .then((res) => {
          const copy = res.clone();
          caches.open(CACHE_VERSION).then((c) => c.put('/', copy));
          return res;
        })
        .catch(() => caches.match('/'))
    );
    return;
  }

  // Assets estáticos: stale-while-revalidate.
  event.respondWith(
    caches.match(request).then((cached) => {
      const network = fetch(request)
        .then((res) => {
          if (res.ok) {
            const copy = res.clone();
            caches.open(CACHE_VERSION).then((c) => c.put(request, copy));
          }
          return res;
        })
        .catch(() => cached);
      return cached || network;
    })
  );
});

// Lembrete diário de estudo (enviado por api/send-reminders.js via cron).
self.addEventListener('push', (event) => {
  let payload = { title: 'EnglishFlow', body: 'Hora de praticar seu inglês! 🔥' };
  try {
    if (event.data) payload = { ...payload, ...event.data.json() };
  } catch {
    /* usa o payload padrão se não vier JSON */
  }

  event.waitUntil(
    self.registration.showNotification(payload.title, {
      body: payload.body,
      icon: '/icons/icon-192.png',
      badge: '/icons/icon-192.png',
      tag: 'daily-reminder',
    })
  );
});

self.addEventListener('notificationclick', (event) => {
  event.notification.close();
  event.waitUntil(
    self.clients.matchAll({ type: 'window' }).then((clients) => {
      const existing = clients.find((c) => 'focus' in c);
      if (existing) return existing.focus();
      return self.clients.openWindow('/');
    })
  );
});
