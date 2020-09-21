	//--------------SPEED BY WITCH THE PLAYER MOVES NORMALLY
	//--------------WHERE I WANT TO MOVE
	move_up = keyboard_check(ord("W"));
	move_down = keyboard_check(ord("S"));
	move_left = keyboard_check(ord("A"));
	move_right = keyboard_check(ord("D"));
	

	//--------------------PLAYER MOVEMENT CALCULUS
	move_Y = (move_down - move_up) * spd ;
	move_X = (move_right - move_left) * spd;

	scr_colitionSystem();
	
	x = x + move_X
	y = y + move_Y
	
	if(mouse_check_button_pressed(mb_left )){
		inst = instance_create_layer(x,y,"Bullets",obj_bullet);
		inst.direction = point_direction(x,y, mouse_x, mouse_y)
		audio_play_sound(snd_gun,1,false)
		
	}