function filtrad_IIR()
    %------------------Lectura y preparación del archivo-------------
    [audio_sin_filtrar, fs] = audioread( "Party_ruido_barrido.wav");
    
    valor_muestreo = length(audio_sin_filtrar);
    
    duracion = valor_muestreo/fs;
    
    delta_sennal = 1/duracion;
    
    %-----Transformada rápdida de Fourier----
    
    ffft_audio_sin_filtrar= fft(audio_sin_filtrar);
    
    f = [0:delta_sennal:fs-delta_sennal];
    
    %-------Gráfica de la señal
    
    plot(f, abs(ffft_audio_sin_filtrar));
    
    
    %-------------Filtrado-------------
    
    audio_filtrado = filter(, audio_sin_filtrar);
    
    soundsc(audio_filtrado, fs);
    
    ffft_audio_filtrado = fft(audio_filtrado);
    plot(f, abs(ffft_audio_filtrado));
    

end