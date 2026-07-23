// Wrapper da Web Speech API (áudio no browser, sem custo de servidor).
// TTS (falar) tem suporte amplo, inclusive iOS Safari.
// STT (reconhecimento) é bom em Chrome/Edge/Safari e parcial no Firefox.

export function isSpeakSupported() {
  return typeof window !== 'undefined' && 'speechSynthesis' in window;
}

function getRecognition() {
  if (typeof window === 'undefined') return null;
  return window.SpeechRecognition || window.webkitSpeechRecognition || null;
}

export function isListenSupported() {
  return !!getRecognition();
}

// Escolhe uma voz en-US (as vozes carregam de forma assíncrona no browser).
function pickEnglishVoice() {
  const voices = window.speechSynthesis.getVoices();
  return (
    voices.find((v) => v.lang === 'en-US') ||
    voices.find((v) => v.lang?.startsWith('en')) ||
    null
  );
}

// Fala um texto em inglês. Cancela qualquer fala anterior.
export function speak(text, { rate = 0.9 } = {}) {
  if (!isSpeakSupported() || !text) return;
  const synth = window.speechSynthesis;
  synth.cancel();

  const utter = new SpeechSynthesisUtterance(text);
  utter.lang = 'en-US';
  utter.rate = rate;

  const voice = pickEnglishVoice();
  if (voice) {
    utter.voice = voice;
    synth.speak(utter);
  } else {
    // Vozes ainda não carregaram: espera o evento uma vez.
    const handler = () => {
      utter.voice = pickEnglishVoice() || undefined;
      synth.speak(utter);
      synth.removeEventListener('voiceschanged', handler);
    };
    synth.addEventListener('voiceschanged', handler);
    // Fallback: se o evento não disparar, fala mesmo assim.
    setTimeout(() => {
      if (!synth.speaking) synth.speak(utter);
    }, 250);
  }
}

// Cria um reconhecedor de fala configurado (ou null se não suportado).
// Retorna a instância para que a UI controle start()/stop() — no iOS Safari
// o reconhecimento não encerra sozinho de forma confiável, então quem chama
// precisa poder parar o microfone explicitamente.
export function newRecognition(lang = 'en-US') {
  const Recognition = getRecognition();
  if (!Recognition) return null;
  const recognition = new Recognition();
  recognition.lang = lang;
  recognition.interimResults = false;
  recognition.maxAlternatives = 1;
  recognition.continuous = false;
  return recognition;
}
