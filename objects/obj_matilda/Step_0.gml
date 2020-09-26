
dir = point_direction(x,y,obj_jon.x,obj_jon.y);	
move_X = sign(lengthdir_x(spd,dir));
move_Y = sign(lengthdir_y(spd,dir));

if(!place_meeting(x,y,obj_jon)){
	if(!audio_is_playing(snd_pasos)){audio_play_sound(snd_pasos,1,false)}
	dir = point_direction(0,0,move_X,move_Y);	
	show_debug_message(dir)
	switch(dir){
		case 0: sprite_index = spr_matilda_r; break;
		case 45:sprite_index = spr_matilda_ur;break;
		case 90:sprite_index = spr_matilda_u; break;
		case 135:sprite_index = spr_matilda_ul;break;
		case 180:sprite_index = spr_matilda_l; break;
		case 225:sprite_index = spr_matilda_dl;break;
		case 270:sprite_index = spr_matilda_d; break;
		case 315:sprite_index = spr_matilda_dr;break;
	}

	x += move_X;
	y += move_Y;
}else{
	move_X = (obj_jon.move_right - obj_jon.move_left);
	move_Y = (obj_jon.move_down - obj_jon.move_up);
	x += move_X;
	y += move_Y;
	if(move_X == 0 and move_Y == 0){
		scr_colitionSystem();
		image_index = 0;
	}

}
	

	