// Grava áudio do microfone e codifica como WAV PCM16 mono — formato exigido
// pela Azure Pronunciation Assessment (a Web Speech API não expõe áudio bruto,
// só texto reconhecido, por isso não dá pra reaproveitar o speechService aqui).

export function isRecordingSupported() {
  return typeof navigator !== 'undefined' && !!navigator.mediaDevices?.getUserMedia;
}

export async function startWavRecording() {
  const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
  const AudioContextClass = window.AudioContext || window.webkitAudioContext;
  // Pede 16kHz (o que a Azure prefere); alguns browsers ignoram e usam a taxa
  // do hardware — por isso sempre lemos audioContext.sampleRate real depois.
  const audioContext = new AudioContextClass({ sampleRate: 16000 });
  const source = audioContext.createMediaStreamSource(stream);
  const processor = audioContext.createScriptProcessor(4096, 1, 1);
  const chunks = [];

  processor.onaudioprocess = (e) => {
    chunks.push(new Float32Array(e.inputBuffer.getChannelData(0)));
  };

  source.connect(processor);
  processor.connect(audioContext.destination);

  function stop() {
    processor.disconnect();
    source.disconnect();
    stream.getTracks().forEach((t) => t.stop());
    const sampleRate = audioContext.sampleRate;
    audioContext.close();
    return { blob: encodeWav(chunks, sampleRate), sampleRate };
  }

  return { stop };
}

function encodeWav(chunks, sampleRate) {
  const length = chunks.reduce((sum, c) => sum + c.length, 0);
  const pcm = new Int16Array(length);
  let offset = 0;
  for (const chunk of chunks) {
    for (let i = 0; i < chunk.length; i++) {
      const s = Math.max(-1, Math.min(1, chunk[i]));
      pcm[offset++] = s < 0 ? s * 0x8000 : s * 0x7fff;
    }
  }

  const buffer = new ArrayBuffer(44 + pcm.length * 2);
  const view = new DataView(buffer);

  function writeString(o, s) {
    for (let i = 0; i < s.length; i++) view.setUint8(o + i, s.charCodeAt(i));
  }

  writeString(0, 'RIFF');
  view.setUint32(4, 36 + pcm.length * 2, true);
  writeString(8, 'WAVE');
  writeString(12, 'fmt ');
  view.setUint32(16, 16, true);
  view.setUint16(20, 1, true); // PCM
  view.setUint16(22, 1, true); // mono
  view.setUint32(24, sampleRate, true);
  view.setUint32(28, sampleRate * 2, true); // byte rate (16-bit mono)
  view.setUint16(32, 2, true); // block align
  view.setUint16(34, 16, true); // bits per sample
  writeString(36, 'data');
  view.setUint32(40, pcm.length * 2, true);

  let o = 44;
  for (let i = 0; i < pcm.length; i++, o += 2) view.setInt16(o, pcm[i], true);

  return new Blob([buffer], { type: 'audio/wav' });
}
