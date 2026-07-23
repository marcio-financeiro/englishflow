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

// Escuta o microfone e resolve com o texto reconhecido.
// Rejeita com códigos amigáveis: 'unsupported' | 'not-allowed' | 'no-speech' | 'error'.
export function listen({ lang = 'en-US' } = {}) {
  return new Promise((resolve, reject) => {
    const Recognition = getRecognition();
    if (!Recognition) {
      reject(new Error('unsupported'));
      return;
    }

    const recognition = new Recognition();
    recognition.lang = lang;
    recognition.interimResults = false;
    recognition.maxAlternatives = 1;

    let settled = false;

    recognition.onresult = (event) => {
      settled = true;
      resolve(event.results[0][0].transcript);
    };
    recognition.onerror = (event) => {
      settled = true;
      if (event.error === 'not-allowed' || event.error === 'service-not-allowed') {
        reject(new Error('not-allowed'));
      } else if (event.error === 'no-speech') {
        reject(new Error('no-speech'));
      } else {
        reject(new Error('error'));
      }
    };
    recognition.onend = () => {
      if (!settled) reject(new Error('no-speech'));
    };

    try {
      recognition.start();
    } catch {
      reject(new Error('error'));
    }
  });
}
