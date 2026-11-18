//Dibujar el sprite original del NPC
draw_self();

if (jugador_cerca && !instance_exists(obj_dialogo)){
    draw_set_font(fn_dialogo);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    //Asignación color
    draw_set_colour(c_white);
    
    //Mensaje de interacción
    draw_text(x, y - 8, "E - Hablar");
    
    //Restaurar la alineación
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}