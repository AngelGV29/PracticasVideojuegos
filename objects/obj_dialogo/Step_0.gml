//Validamos el mensaje
//Si no existe mensaje, se cierra el diálogo
if (array_length(mensajes) <= 0){
    instance_destroy();
    exit;
}

//Si no hay mensajes validos, terminamos la conversacion

if (mensaje_actual >= array_length(mensajes)){
    instance_destroy();
    exit;
}

//obtener el mensaje actual
var texto_actual = mensajes[mensaje_actual].msg;

var total_caracteres = string_length(texto_actual);

//Escribimos el mensaje de forma progresiva

if (dialogo_actual < total_caracteres){
    //Incrementeamos los caracteres visibles (letras)
    dialogo_actual += dialogo_speed;
    
    //Si presionamos tecla space, mostramos el texto
    if (keyboard_check_pressed(input_key)){
        dialogo_actual = total_caracteres;
    }
    
    //Mostramos solo los caracteres visibles
    draw_mensaje = string_copy(texto_actual, 1, floor (dialogo_actual));
}
else if (keyboard_check_pressed(input_key)){
    mensaje_actual++;
    
    //Si existen más mensajes, preparamos el siguiente
    if (mensaje_actual < array_length(mensajes)){
        dialogo_actual = 0;
        draw_mensaje = "";
    }
    else{
        //Ya no quedan mensajes que mostrar
        terminar = true;
    }
}

//Cerramos la conversación (cuadro de dialogo)
if (terminar){
    instance_destroy();
}