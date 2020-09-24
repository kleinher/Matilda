/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(movimiento > 0){
	sprite_index = spr_ur;
	if(direccion){
		dir = 135;
	}else{
		dir = 60;
	}
	
	move_X = lengthdir_x(spd,dir);
	move_Y = lengthdir_y(spd,dir);
	x += move_X;
	y += move_Y;
	movimiento -= 1;
}else
{
	sprite_index = spr_d;
	image_index = 0;
}
show_debug_message(alarm[0]);
if(alarm[0] <= 1	){	
	inst = instance_create_layer(x,y,"Bullets",obj_bullet);
	dir = point_direction(x,y, obj_jon.x, obj_jon.y);;
	inst.direction = dir;
	inst.image_angle = dir;
	audio_play_sound(snd_gun,1,false);
	show_debug_message("asdfas")
}