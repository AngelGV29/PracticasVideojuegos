//Propiedades básicas del jugador

#region 


move_speed_v = 0.5;
jump_speed = -10; 
gravity_v = 0.5;

#endregion

#region Control daño

tiempo_invulnerable = 0;
tiempo_rojo = 0;

//Color normal del sprite
image_blend = c_white;

#endregion

#region Sistema de velocidad

//Velocidad de movimiento
move_speed = 2.5;

//Velocidad que se usa actualmente
velocidad_actual = move_speed;

//Indicamos el potenciador
velocidad_aumentada = false;

//Duracion del pñotenciador en segundos
duracion_velocidad = 10;

//Temporizador de velocidad
tiempo_velocidad = 0;

#endregion

#region Sistema de inmunidad

//Indicamos si el jugador es inmune
inmunidad = false;

//Duracion de la inmunidad
duracion_inmunidad = 10;

//Temporizador de inmunidad
tiempo_inmunidad = 0;

//Color original del sprite
color_sprite_normal = image_blend;
#endregion


//Datos de llegada al cambiar de habitación
transicion_pendiente = false;
llegada_x = 0;
llegada_y = 0;