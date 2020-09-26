// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_alert(){
	//Behaviour
	my_dir = point_direction(x,y,obj_player.x, obj_player.y);
	moveX = lengthdir_x(spr, my_dir);
	moveY = lengthdir_y(spd, my_dir);
	x += moveX;
	y += moveY;
	
	//Transition Triggers
	if(!collision_circle(x,y, 64, obj_player, false, false)){
		state = states.idle;	
	}
	if(collision_circle(x,y,32,obj_player,false,false)){
		state = states.attack;	
	}
	
	//Sprite
	sprite_index = spr_enemy;
	image_xscale = sign(moveX);
}