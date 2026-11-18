#region Control de tiempo de invulenrabilidad y daño
//COntrol de tiempo de invulnerabilidad
if (tiempo_invulnerable > 0){
    tiempo_invulnerable--;
}

//Controlamos el daño dibujando de rojo el player
if (tiempo_rojo > 0){
    tiempo_rojo--;
    
    if (tiempo_rojo <= 0){
        image_blend = c_white;
    }
}
#endregion



#region control dialogo
//Si existe una conversación, detenemos el movimiento del jugador
if (instance_exists(obj_dialogo)){
    exit;
}

//X es para movimiento horizontal
//Y es para mvimiento vertical
//var es para asignar variables locales (solo se utilizaran dentro del evento en que se crean)

var mov_x = keyboard_check(vk_right) - keyboard_check(vk_left);

//True = 1, False = 0 | izquieda = -1, quieto = 0, derecha = 1

#endregion


#region Control Powerups velocidad

if (velocidad_aumentada){
    tiempo_velocidad--;
    
    //Cuando termine el tiempo, recuperamos la velocidad normal
    if (tiempo_velocidad <= 0){
        velocidad_aumentada = false;
        velocidad_actual = move_speed;
    }
    
    
}

#endregion

#region Control Powerups inmunidad

if(inmunidad){
    tiempo_inmunidad--;
    
    //Cuando termina la inmunidad, recuperamos el color original
    if(tiempo_inmunidad <= 0){
        inmunidad = false;
        image_blend = color_sprite_normal;
    }
}

#endregion

#region Control movimiento
if (mov_x != 0){
    
    if (!place_meeting(x + mov_x * move_speed, y, obj_wall)){
        x += mov_x * velocidad_actual;
    }
    
    //cambiamos el sprite en base a la dirección en que se mueve
    if (mov_x > 0){
        sprite_index = spr_player_right;
    } else{
        sprite_index = spr_player_left;
    }
    image_speed = 0.2
}
else{
    //Si no se muevve, la animación del sprite se pausa
    image_speed = 0;
    image_index = 0;
}
#endregion

#region salto
//Gravedad
move_speed_v += gravity_v;

//Salto del jugador
if (keyboard_check_pressed(vk_space))
{
    if (place_meeting(x, y + 1, obj_wall))
    {
        move_speed_v = jump_speed;
    }
}
 

//Colisión vertical
if (!place_meeting(x, y + move_speed_v, obj_wall))
{
    y += move_speed_v;
}
else
{
    move_speed_v = 0;
}
#endregion

