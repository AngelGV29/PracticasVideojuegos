//Crear la ventana del dialogo y recibir los mensajes del npc

function scr_crear_dialogo(_mensajes){
    //La función recibe un parámetro llamado _mensajes
    //Este parámetro contiene el arreglo de mensajes del NPC
    //Para iniciar la conversación
    
    //Comprobar que no exista otro dialogo
    if (instance_exists(obj_dialogo)){
        return;
    }
    
    //Creamos el objeto encargado de mostrar los mensajes
    var nuevo_dialogo = instance_create_layer(
        0, 0, "Npc", obj_dialogo
    );
    
    //Enviamos los mensajes del NPC al obj dialogo
    nuevo_dialogo.mensajes = _mensajes;
}