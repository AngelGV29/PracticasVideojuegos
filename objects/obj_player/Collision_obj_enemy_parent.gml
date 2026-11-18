//Validamos la para quitar vida al personaje
if (!global.game_over && tiempo_invulnerable <= 0){
    
    //Comprobamos si el jugador puede recibir daño
    if(!inmunidad){
            
        //Quitar una vida
        global.vidas--;
        
        //Activamos el cooldown: 1
        tiempo_invulnerable = 60;
        
        //Dibujamos de rojo al jugador cuando recibe daño
        image_blend = c_red;
        tiempo_rojo = 10;
        
        //Comprobamos el game over
        if (global.vidas <= 0){
            global.vidas = 0;
            global.game_over = true;
        }
    }
    
}