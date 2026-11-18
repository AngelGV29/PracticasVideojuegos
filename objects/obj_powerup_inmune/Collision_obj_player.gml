//Activamos Poerup de inmunidad

//Activamos la inmunidad
other.inmunidad = true;

//Asignamos 10 segundos
other.tiempo_inmunidad = room_speed * other.duracion_inmunidad;

//Cambiamos el color del sprite
other.image_blend = c_yellow;

//Eliminamos el objeto recolectado
instance_destroy();
