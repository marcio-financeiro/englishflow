// Wrapper da Web Speech API para texto-em-voz (TTS), suporte amplo mesmo no
// iOS Safari. Gravação/avaliação de pronúncia ficam em wavRecorder.js +
// pronunciationService.js (a Web Speech API de reconhecimento só dá texto,
// não fonemas — por isso não é usada mais para isso).

export function isSpeakSupported() {
  return typeof window !== 'undefined' && 'speechSynthesis' in window;
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
