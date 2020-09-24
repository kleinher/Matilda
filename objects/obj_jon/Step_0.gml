	//--------------SPEED BY WITCH THE PLAYER MOVES NORMALLY
	//--------------WHERE I WANT TO MOVE
	move_up = keyboard_check(ord("W"));
	move_down = keyboard_check(ord("S"));
	move_left = keyboard_check(ord("A"));
	move_right = keyboard_check(ord("D"));
	left_clic = mouse_check_button_pressed(mb_left);
	space = keyboard_check(vk_space);
	
	
	//--------------------PLAYER MOVEMENT CALCULUS
	move_Y = (move_down - move_up);
	move_X = (move_right - move_left);
	if(move_Y != 0 or move_X != 0){
		dir = point_direction(0,0,move_X,move_Y);	
		move_X = lengthdir_x(spd,dir);
		move_Y = lengthdir_y(spd,dir);
		switch(dir){
			case 0: sprite_index = spr_r; break;
			case 45:sprite_index = spr_ur;break;
			case 90:sprite_index = spr_u; break;
			case 135:sprite_index = spr_ul;break;
			case 180:sprite_index = spr_l; break;
			case 225:sprite_index = spr_dl;break;
			case 270:sprite_index = spr_d; break;
			case 315:sprite_index = spr_dr;break;
		}
	}else{
		image_index = 0;	
	}
	
	scr_colitionSystem();
	x += move_X;
	y += move_Y;
	
	///----------------- SHOOTING	
	if(left_clic){
		inst = instance_create_layer(x,y,"Bullets",obj_bullet);
		dir = point_direction(x,y, mouse_x, mouse_y);
		inst.direction = dir;
		inst.image_angle = dir;
		audio_play_sound(snd_gun,1,false)
	}
	//----------SPRITES
	if(space){
	spd = 12;	
		
	}else{
	spd = 6;	
	}