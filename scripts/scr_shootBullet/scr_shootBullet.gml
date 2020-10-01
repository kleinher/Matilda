// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shootBullet(){
	mouse_left = mouse_check_button_pressed(mb_left);
	
	//SHOOT THE LITTLE BULLET
	if(mouse_left){
		
		dir = point_direction(x,y,mouse_x,mouse_y);
		width = sprite_get_width(spr_gun1);
		x_pos = lengthdir_x(width,dir)/4;
		y_pos =  lengthdir_y(width,dir)/4;
		
		image_angle = dir;
		var inst = instance_create_layer(obj_arma.x_gun + x_pos ,obj_arma.y_gun,"Bullets", obj_bullet);
		inst.direction = dir;
		inst.direction = dir;
		inst.image_angle = dir;
		audio_play_sound(snd_gun,1,false);
		//audio_play_sound(snd_smallShot,1,false);
		
	}
}