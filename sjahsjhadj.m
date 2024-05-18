[audio_sin_filtrar, fs]=  audioread('Party_ruido_barrido.wav');

ffft_audio_sin = fft(audio_sin_filtrar);

duracion = length(audio_sin_filtrar);

ff
Periodo = 1/fs;
Td = duracion*Ts;
deltaf = 1/Td;
f=[0:deltaf:fs-deltaf];

plot(f, ffft_audio_sin);