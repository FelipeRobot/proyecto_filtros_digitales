

function main()
state_holder(); % Llama a la función para mostrar el menú.
end

% Función para mostrar el menú y gestionar las opciones seleccionadas.
function state_holder()
% Mensaje para mostrar en el menú.
    msg = " TERCER PROYECTO MATLAB SEÑALES Y SISTEMAS _ FELIPE USECHE  & JUAN CONRADO";
% Crea el menú con las opciones disponibles.
    state = menu( msg,'Escuchar audio sin filtrar' ,'Gráfica del audio sin filtrar', 'Opciones de filtrado');
    
% Realiza una acción según la opción seleccionada.
        switch state 
            case 1
                [audio_sin_filtrar, fs] = audioread( "Party_ruido_barrido.wav");
                soundsc(audio_sin_filtrar, fs);
                main();% Vuelve al menú principal.
            case 2
                sjahsjhadj();
                main();% Vuelve al menú principal.
            case 3
                filtrado_menu()
                main();% Vuelve al menú principal.
        end
end

function filtrado_menu()

    state_2 = menu("Opciones filtrado", "Esucchar audio y ver gráfica FIR", "Esucchar audio y ver gráfica IIR", "Volver");
    switch state_2
        case 1
            filtrad_FIR();
            filtrado_menu();
        case 2
            filtrad_IIR();
            filtrado_menu();
        case 3
        state_holder();
    end   
end


