# CLAUDE.md — EnglishFlow

## Comunicação
- Responda sempre em português (pt-BR). Código, nomes de variáveis e commits em inglês.
- Explique decisões técnicas de forma simples — o usuário não tem background formal em programação.

## Estilo de trabalho
- NUNCA execute mudanças sem aprovação explícita. Sempre mostre o diff/plano antes de qualquer commit.
- Prefira soluções simples e práticas. Não adicione abstrações "para o futuro" sem necessidade real.
- Uma feature por vez. Não misture refatoração com feature nova no mesmo commit.
- Ao final de cada tarefa, liste o que foi feito e o que falta testar manualmente.

## Contexto do projeto
- EnglishFlow: PWA de aprendizado de inglês (A1→C2), gamificado, com IA para correção e conversação.
- Usuário: desenvolvedor solo, usa Windows 11 + PowerShell, deploy na Vercel, banco no Supabase.
- MVP (Fases 0-6) concluído. Fase atual: construir o **roadmap de conteúdo CEFR A1→C2** — ver
  `docs/STATUS.md` (seção "Roadmap de conteúdo") pro plano completo de módulos/temas por nível e
  quanto já foi feito. Sempre confirmar quais módulos construir antes de escrever conteúdo novo —
  não gerar lotes grandes sem revisão.

## Stack
- React 18 + Vite + Tailwind CSS
- Supabase (auth, PostgreSQL com RLS, Edge Functions, Storage)
- Vercel (hosting + serverless routes quando necessário — cron de lembretes em `api/`)
- Áudio: voz neural via Azure TTS (Edge Function `tts-proxy`), fallback Web Speech API; reconhecimento
  de fala (STT) e avaliação de pronúncia por fonema via Azure Pronunciation Assessment
  (`pronunciation-proxy`)
- Imagens: busca automática no Unsplash por palavra, cacheada em `vocabulary` (`vocab-image-proxy`)
- IA via camada `src/services/aiService.js` → Edge Function `ai-proxy` (chave NUNCA no front)

## Comandos
```bash
npm run dev        # dev server local (Vite)
npm run build      # build de produção
npx supabase db push   # aplicar migrations (ou via MCP do Supabase)
```

## Estrutura de pastas
```
src/
  components/      # componentes compartilhados (Sidebar, ThemeToggle...)
  features/
    auth/
    onboarding/    # wizard pós-cadastro (tempo/objetivo/nível)
    lessons/       # player de lições + tipos de exercício (exercises/)
    review/        # repetição espaçada (SM-2)
    dashboard/
    chat/          # conversação com IA
    practice/      # prática adaptativa (IA gera exercícios dos erros)
  services/
    aiService.js         # abstração de IA (provider-agnostic)
    supabaseClient.js
    speechService.js     # speak() — Azure TTS com fallback Web Speech API
    ttsService.js         # chama a Edge Function tts-proxy
    vocabImageService.js  # chama a Edge Function vocab-image-proxy
    onboardingService.js
    srsService.js         # algoritmo SM-2
  lib/             # helpers puros
supabase/
  migrations/      # SQL versionado por número (001, 002...)
  functions/
    ai-proxy/               # Edge Function que chama a API de IA
    pronunciation-proxy/    # avaliação de pronúncia por fonema (Azure)
    tts-proxy/               # leitura em voz neural (Azure)
    vocab-image-proxy/       # busca/cache de imagem por palavra (Unsplash)
```

## Regras de segurança
- Chaves de API de IA existem SOMENTE em secrets de Edge Function. Se encontrar chave no front, pare e avise.
- RLS obrigatório em todas as tabelas com dados de usuário desde a primeira migration.
- Validar input do usuário antes de enviar para a IA (limite de tamanho, sanitização).

## Verificação antes de dizer "pronto"
- `npm run build` sem erros
- Testar o fluxo alterado no browser (Playwright hook se configurado)
- Conferir se nenhuma migration quebrou RLS
