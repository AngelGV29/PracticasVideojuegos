var jugador_cerca = false;

if (perseguir_jugador && instance_exists(obj_player)){
	//Valida que la posición del jugador este dentro del rango de persecusion del enemigo
	if (point_distance(x, y, obj_player.x, obj_player.y) < rango_persecusion)
	{
		jugador_cerca = true;
		
		if (obj_player.x < x)
		{
			direccion_enemigo = -1;
		}
		
		else if (obj_player.x > x)
		{
			direccion_enemigo = 1;
		}
	}
}


//Mover al enemigo
var movimiento_x = velocidad_enemigo * direccion_enemigo;

//Línea que evita que el enemigo que sigue al jugador se vuelva loco si no lo detecta
if (perseguir_jugador && !jugador_cerca)
{
    movimiento_x = 0;
}

if (place_meeting(x + movimiento_x, y, obj_solid) || place_meeting(x + movimiento_x, y, obj_wall))
{
	//Si el enemigo está caminando, se da la vuelta
	if (!jugador_cerca)
	{
		direccion_enemigo = -direccion_enemigo;
	}
}
else
{ 
    x += movimiento_x;
}

if (direccion_enemigo == 1) {
    image_xscale = -1;
}
else{
    image_xscale = 1;
}

//Aplicar gravedad en enemigos
velocidad_vertical = min(velocidad_vertical + gravedad_enemigo, 8);

//Colisión con el suelo
if (place_meeting(x, y + velocidad_vertical, obj_solid) || place_meeting(x, y + velocidad_vertical, obj_wall))
{
	velocidad_vertical = 0;
}
else
{
	y += velocidad_vertical;
}

