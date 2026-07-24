// TTS: voz neural via Azure (tts-proxy), com fallback para a Web Speech API
// nativa do navegador se a Azure falhar (offline, rate limit, erro de rede).
// Gravação/avaliação de pronúncia ficam em wavRecorder.js +
// pronunciationService.js (a Web Speech API de reconhecimento só dá texto,
// não fonemas — por isso não é usada mais para isso).
import { synthesizeSpeech } from './ttsService';

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

// Fallback: fala via Web Speech API nativa do navegador.
function speakWithBrowserVoice(text, rate) {
  if (!isSpeakSupported()) return;
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

let currentAudio = null;

// Fala um texto em inglês com voz neural (Azure). Cancela qualquer fala
// anterior (Azure ou nativa). Se a Azure falhar, cai para a voz do navegador.
export async function speak(text, { rate = 0.9 } = {}) {
  if (!text) return;

  if (currentAudio) {
    currentAudio.pause();
    currentAudio = null;
  }
  if (isSpeakSupported()) window.speechSynthesis.cancel();

  try {
    const blob = await synthesizeSpeech(text);
    const audio = new Audio(URL.createObjectURL(blob));
    currentAudio = audio;
    audio.addEventListener('ended', () => URL.revokeObjectURL(audio.src));
    await audio.play();
  } catch {
    // Azure indisponível (offline, rate limit, erro) — cai para a voz nativa.
    speakWithBrowserVoice(text, rate);
  }
}
