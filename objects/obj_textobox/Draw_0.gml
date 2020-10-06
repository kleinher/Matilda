
// Draw sprite
if(objeto != noone){
	draw_sprite_ext(objeto.spriteDialogo,0,x,y,-1,1,0,c_white,1);
	draw_sprite_ext(spr_textBox,0,x,y,1,1,0,c_white,0.5);
}

if(!entro){
	//scribble_set_wrap(boxWidth,boxHight/2, true);
	scribble_draw(x, y, texto, "");
	scribble_autotype_fade_in(texto, 1, 1, false, "");
	entro = true;
}
scribble_draw(x, y, texto, "");
show_debug_message(texto)