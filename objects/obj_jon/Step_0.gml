
//THIS IS FOR PAUSE PURPUSE
if(vivir){
	
	
	//--------------SPEED BY WITCH THE PLAYER MOVES NORMALLY
	//--------------WHERE I WANT TO MOVE
	move_up = keyboard_check(ord("W"));
	move_down = keyboard_check(ord("S"));
	move_left = keyboard_check(ord("A"));
	move_right = keyboard_check(ord("D"));

	
	//--------------------PLAYER MOVEMENT CALCULUS
	move_Y = (move_down - move_up);
	move_X = (move_right - move_left);
	if(move_Y != 0 or move_X != 0){
		if(!audio_is_playing(snd_pasos)){audio_play_sound(snd_pasos,1,false)}
		dir = point_direction(0,0,move_X,move_Y);	
		move_X = lengthdir_x(spd,dir);
		move_Y = lengthdir_y(spd,dir);
		switch(dir){
			case 0: sprite_index = spr_leon_l;image_xscale = -1;break;
			case 45:sprite_index = spr_leon_ul;image_xscale = 1;break;
			case 90:sprite_index = spr_leon_u; break;
			case 135:sprite_index = spr_leon_ul;image_xscale = -1;break;
			case 180:sprite_index = spr_leon_l; image_xscale = 1;break;
			case 225:sprite_index = spr_leon_dl;image_xscale = 1;break;
			case 270:sprite_index = spr_leon_d; break;
			case 315:sprite_index = spr_leon_dl;image_xscale = -1;break;
		}
	}else{
		image_index = 0;	
	}
	
	scr_collition();
	x += move_X;
	y += move_Y;

	
}else{ image_index = 0; }