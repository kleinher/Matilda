// Script assets have changed for v2.3.0 seead
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_alert(){
	//Behaviour
	my_dir = point_direction(x,y,obj_jon.x, obj_jon.y);
	move_X = lengthdir_x(attack_spd, my_dir);
	move_Y = lengthdir_y(attack_spd, my_dir);
	scr_collition();
	scr_enemy_sprite();
	x += move_X;
	y += move_Y;

	//Transition Triggers
	if(!collision_circle(x,y, 256, obj_jon, false, false)){
		state = states.idle;	
	}
	
	if(collision_circle(x,y,128,obj_jon,false,false)){
		state = states.attack;	
	}
	
	//Sprite
	draw_sprite(spr_exclamation,noone,x,y)
	//Sprite
	//image_xscale = sign(move_X);
	//image_xscale = sign(move_X);
}	