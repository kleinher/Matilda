//---------Get direction to jon
dir = point_direction(x,y,obj_jon.x,obj_jon.y);	
move_X = lengthdir_x(spd,dir);
move_Y = lengthdir_y(spd,dir);
	

dir = point_direction(0,0,sign(move_X),sign(move_Y));	
	
//---------Selects the sprite
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


	// -------MOVE IF THERE IS NO COLLITION
if(!place_meeting(x,y,obj_jon)){
	if(!audio_is_playing(snd_pasos)){audio_play_sound(snd_pasos,1,false)}
	scr_collition();
	x += move_X*spd;
	y += move_Y*spd;
}else{
	
	image_index = 0;
}
	

	