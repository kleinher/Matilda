// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_sprite(){
	dir = point_direction(0,0,sign(move_X),sign(move_Y));
	show_debug_message(dir);
	switch(dir){
			case 0: sprite_index = spr_enemigo_l;image_xscale = -1;break;
			case 45:sprite_index = spr_enemigo_ul;image_xscale = -1;break;
			case 90:sprite_index = spr_enemigo_u; break;
			case 135:sprite_index = spr_enemigo_ul;image_xscale = 1;break;
			case 180:sprite_index = spr_enemigo_l; image_xscale = 1;break;
			case 225:sprite_index = spr_enemigo_dl;image_xscale = 1;break;
			case 270:sprite_index = spr_enemigo_d; break;
			case 315:sprite_index = spr_enemigo_dl;image_xscale = -1;break;
	}
}