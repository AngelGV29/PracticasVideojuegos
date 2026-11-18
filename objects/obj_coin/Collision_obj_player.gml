//Colisión con el player
if (!variable_global_exists("monedas")){
    global.monedas = 0;
}

global.monedas += 1;

//Reproducir sonido de la monead
audio_play_sound(snd_coin, 1, false);

//Sonidos: 1- Prioridad baja, 5-Solo se escucha  al hacer una accion
//El segundo parametro es para darle prioridad
//6- ACcion importante. 7- REsalta dureante el juego.
//9- Importante que se escuche durante el juego
//10- Debe escucharse claro
//El terceer parametro es si se repite el sonido o no; false no se repite
instance_destroy();