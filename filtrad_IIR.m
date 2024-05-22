function filtrad_IIR()
    %------------------Lectura y preparación del archivo-------------
    [audio_sin_filtrar, fs] = audioread( "Party_ruido_barrido.wav");
    
    valor_muestreo = length(audio_sin_filtrar);
    
    duracion = valor_muestreo/fs;
    
    delta_sennal = 1/duracion;
   
    f = [0:delta_sennal:fs-delta_sennal];
    
    
    %-------------Filtrado-------------

    %-------------Carga del filtro IIR-------------

    % Cargar el objeto del filtro desde el archivo .mat
    loadedData = load('IIR_1.mat');
    IIR_1 = loadedData.IIR_1;
    
    audio_filtrado = filter(IIR_1, audio_sin_filtrar);
    
    soundsc(audio_filtrado, fs);%reproducción del audio

     %-----Transformada rápdida de Fourier----

    ffft_audio_filtrado = fft(audio_filtrado);

    %------Gráfica de la señal-----------
    figure;
    plot(f, abs(ffft_audio_filtrado));
    title('Señal filtrada IIR');
    xlabel('Frecuencia (Hz)');
    ylabel('Magnitud');
    
   

end