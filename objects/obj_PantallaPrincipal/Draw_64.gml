/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var gwidth = global.view_width, gheight = global.view_height;

var c= c_white;
draw_rectangle_color(0,0,gwidth,gheight,c,c,c,c,false);
draw_sprite_ext(spr_dumbo,noone,gwidth/2,gheight/4,2,2,0,noone,1)
draw_set_color(c_black)
draw_set_alpha(1)
draw_text_ext_transformed(gwidth/2,gheight/2,"DUMBO GAMES",1,5000,1*a,1*a,b*60)
