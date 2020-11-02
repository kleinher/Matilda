/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_rectangle(x,y+60,x+ancho,y+250,true)
if(keyboard_check(vk_up)){
	ancho+=10;
	show_debug_message("Alto="+string(ancho))
}
if(keyboard_check(vk_right)){
	alto+=10;
	show_debug_message("Ancho="+string(alto))
}
if(keyboard_check(vk_down)){
	ancho-=10;
	show_debug_message("Alto="+string(ancho))
}
if(keyboard_check(vk_left)){
	alto-=10;
	show_debug_message("Ancho="+string(alto))
}