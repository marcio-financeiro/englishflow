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
- MVP focado em nível A1. Escopo controlado por fases (ver docs/INSTRUCOES-CLAUDE-CODE-englishflow.md).

## Stack
- React 18 + Vite + Tailwind CSS
- Supabase (auth, PostgreSQL com RLS, Edge Functions, Storage)
- Vercel (hosting + serverless routes quando necessário)
- Web Speech API (STT/TTS no browser)
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
  components/      # componentes compartilhados (Button, Card, ProgressBar...)
  features/
    auth/
    lessons/       # player de lições + tipos de exercício
    review/        # repetição espaçada (SM-2)
    dashboard/
    chat/          # conversação com IA
  services/
    aiService.js       # abstração de IA (provider-agnostic)
    supabaseClient.js
    speechService.js   # wrapper Web Speech API (STT + TTS)
    srsService.js      # algoritmo SM-2
  lib/             # helpers puros
supabase/
  migrations/      # SQL versionado por data (padrão FinZen)
  functions/
    ai-proxy/      # Edge Function que chama a API de IA
```

## Regras de segurança
- Chaves de API de IA existem SOMENTE em secrets de Edge Function. Se encontrar chave no front, pare e avise.
- RLS obrigatório em todas as tabelas com dados de usuário desde a primeira migration.
- Validar input do usuário antes de enviar para a IA (limite de tamanho, sanitização).

## Verificação antes de dizer "pronto"
- `npm run build` sem erros
- Testar o fluxo alterado no browser (Playwright hook se configurado)
- Conferir se nenhuma migration quebrou RLS
