
if(objeto != noone){
	draw_sprite_ext(spr_textBox,0,x,y,1,1,0,c_white,0.8);
	draw_sprite_ext(objeto.spriteDialogo,0,x-128,y,-1,1,0,c_white,1);

}

if(!entro){
	scribble_set_wrap(boxWidth-5,boxHight, false);
	scribble_draw(x-64, y-64, texto, "");
	scribble_autotype_fade_in(texto, 1, 1, false, "");
	entro = true;
}
scribble_draw(x-64, y-32, texto, "");