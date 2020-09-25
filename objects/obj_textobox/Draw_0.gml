


// Draw sprite
texto = "Todo piola perrito????? Yo nada aca tirando"

draw_sprite_ext(spr_MatildaTextBox,0,x,y,-1,1,0,c_white,1);
draw_sprite_ext(spr_textBox,0,x,y,1,1,0,c_white,0.5);

// Draw text
draw_set_halign(fa_left);
draw_set_valign(fa_top)
draw_set_font(fnt_textBox);

if(texto != noone){
	draw_text_ext(x,y,texto,boxHight/2,boxWidth);
}