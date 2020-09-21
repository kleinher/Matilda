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