//Evento Collision con obj_player
if (!global.game_over && !other.transicion_pendiente)
{
    //Guardar en el jugador la posición de llegada
    other.llegada_x = destino_x;
    other.llegada_y = destino_y;

    //Indicar que debe colocarse al entrar en la siguiente habitación
    other.transicion_pendiente = true;

    //Cambiar a la habitación configurada en esta instancia
    room_goto(destino);
}