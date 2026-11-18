//Comprobar que exista un dialogo
//Si ya existe una conversación no iniciar otra
if (instance_exists(obj_dialogo)){
    jugador_cerca = false;
    exit;
}

//Detectar al jugador
jugador_cerca = false;

//abs regresa un valor positivo
if (instance_exists(obj_player)){
    //Calcula distancias horizontal y vertical
    //abs es por absolute, devuelve el valor absoluto sin considerar decimales
    var distancia_x = abs(obj_player.x - x);
    var distancia_y = abs(obj_player.y - y);
    
    //Comprobar si el jugador esta cerca
    
    if (distancia_x <= dist_x_int && distancia_y <= dist_y_int){
        jugador_cerca = true;
        
        //Si presionamos E, iniciamos la conversación
        if (keyboard_check_pressed(tecla_int)){
            //Crear el diálogo y llamamos el script del diálogo
            scr_crear_dialogo(dialogo);
            
        }
    }
}