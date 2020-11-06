// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_attack(){
	my_dir = point_direction(x,y,obj_jon.x, obj_jon.y);
	move_X = lengthdir_x(attack_spd, my_dir);
	move_Y = lengthdir_y(attack_spd, my_dir);
	scr_collition();
	scr_enemy_sprite();
	if(!instance_exists(inst_knife) and !collision_circle(x,y,attack_hitbox,obj_jon,false,false)){
			x += move_X;
			y += move_Y;
	}
	
	if(!collision_circle(x,y,256,obj_jon,false,false)){
		state = states.alert;	
	}
	if(collision_circle(x,y,attack_hitbox,obj_jon,false,false) and (inst_knife == noone)){
		knife_X = x+lengthdir_x(attack_hitbox, my_dir);
		knife_Y = y+lengthdir_y(attack_hitbox, my_dir);
		inst_knife = instance_create_layer(knife_X, knife_Y,"Instances_Arriba",obj_knife)
		inst_knife.image_angle = my_dir;
		
		inst_knife.enemy_X = x;
		inst_knife.enemy_Y= y;
		inst_knife.my_dir=my_dir;
		inst_knife.attack_hitbox = attack_hitbox;
	}
	if(!instance_exists(inst_knife)){
			inst_knife =noone;	
	}
	//Sprite
	//Sprite
	//image_xscale = sign(move_X);
}