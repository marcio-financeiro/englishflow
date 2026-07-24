export function AuthBrandPanel() {
  return (
    <div
      className="ef-authbrand relative flex flex-1 flex-col justify-center overflow-hidden p-12 text-white max-[680px]:hidden"
      style={{ background: 'linear-gradient(155deg, #0F8B8D 0%, #0C6E70 55%, #0A4F51 100%)' }}
    >
      <div className="pointer-events-none absolute -left-16 -top-16 h-72 w-72 rounded-full bg-white/10 [animation:ef-float-blob_9s_ease-in-out_infinite]" />
      <div className="pointer-events-none absolute -bottom-24 -right-10 h-80 w-80 rounded-full bg-white/10 [animation:ef-float-blob_11s_ease-in-out_infinite]" />

      <div className="relative z-10 mb-6 flex items-center gap-3">
        <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-white/20 text-xl">
          📱
        </div>
        <span className="font-display text-lg font-bold">EnglishFlow</span>
      </div>

      <h2 className="relative z-10 mb-4 max-w-md font-display text-4xl font-extrabold leading-tight">
        Aprenda inglês todo dia, de um jeito que gruda.
      </h2>
      <p className="relative z-10 mb-8 max-w-sm text-white/85">
        Lições curtas, revisão espaçada e conquistas para manter sua sequência viva.
      </p>

      <div className="relative z-10 flex flex-wrap gap-3">
        <span className="flex items-center gap-2 rounded-full bg-white/15 px-4 py-2 text-sm font-semibold">
          🔥 Sequências diárias
        </span>
        <span className="flex items-center gap-2 rounded-full bg-white/15 px-4 py-2 text-sm font-semibold">
          ⭐ Ganhe XP a cada lição
        </span>
      </div>
    </div>
  );
}
