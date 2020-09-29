// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_attack(){
	my_dir = point_direction(x,y,obj_jon.x, obj_jon.y);
	move_X = lengthdir_x(spd, my_dir);
	move_Y = lengthdir_y(spd, my_dir);
	show_debug_message(move_X)
	scr_collition();
	x += move_X;
	y += move_Y;
	
	if(!collision_circle(x,y,128,obj_jon,false,false)){
		state = states.alert;	
	}
	//Sprite
	//Sprite
	sprite_index = spr_enemigo_d;
	//image_xscale = sign(move_X);
}