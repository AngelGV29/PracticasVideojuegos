//Aplicar la posición únicamente si llegamos desde una transición
if (transicion_pendiente)
{
    x = llegada_x;
    y = llegada_y;

    //Evitar conservar la velocidad de caída de la habitación anterior
    move_speed_v = 0;

    //La posición ya fue aplicada
    transicion_pendiente = false;
}