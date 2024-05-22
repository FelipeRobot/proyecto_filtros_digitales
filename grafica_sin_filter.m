function grafica_sin_filter()

  %------------------Lectura y preparación del archivo-------------
    [audio_sin_filtrar, fs] = audioread( "Party_ruido_barrido.wav");
    
    valor_muestreo = length(audio_sin_filtrar);
    
    duracion = valor_muestreo/fs;
    
    delta_sennal = 1/duracion;
    
    %-----Transformada rápdida de Fourier----
    
    ffft_audio_sin_filtrar= fft(audio_sin_filtrar);
    
    f = [0:delta_sennal:fs-delta_sennal];
    
    %-------Gráfica de la señal
    figure;
    plot(f, abs(ffft_audio_sin_filtrar));
    title('Señal sin filtrar');
    xlabel('Frecuencia (Hz)');
    ylabel('Magnitud');



end