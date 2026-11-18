
//Música de fondo
if (!audio_is_playing(musica_fondo)){
    audio_play_sound(musica_fondo, 0, true); 
    audio_sound_gain(musica_fondo, 0.40, 0);
}


if (global.game_over){
    
    audio_stop_sound(musica_fondo);
    temporizador_game_over--;
    
    //Reproducir sonido de muerte una sola vez
        if (!sonido_muerte_reproducido){
            audio_play_sound(sonido_muerte, 20, false);
            sonido_muerte_reproducido = true;
        }
    
    if (temporizador_game_over <= 0){
        obj_player.persistent = false
        room_restart();
    }
}