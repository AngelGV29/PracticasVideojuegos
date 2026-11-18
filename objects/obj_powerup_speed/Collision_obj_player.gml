//Activamos el powerup de velocidad

//Activamos el potenciador
other.velocidad_aumentada = true;

//Aumentamos la velocidad a un 50%
other.velocidad_actual = other.move_speed * 2;

//Reiniciamos el temporizador
other.tiempo_velocidad = room_speed * other.duracion_velocidad;

//Eliminamos el objeto recolectado
instance_destroy();