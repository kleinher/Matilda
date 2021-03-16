// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_wonder(){
	//Behaviour
	
	counter += 1;
	x += move_X;
	y += move_Y;
	
	//Transition Triggers
	if(counter >= room_speed*3){
		var change = choose(0,1);
		switch(change){
			case 0: state = states.idle; break;
			case 1:
				my_dir = irandom_range(0,359);
				move_X = lengthdir_x(spd, my_dir);
				move_Y = lengthdir_y(spd, my_dir);
				counter = 0;
			break;
		}
	}
	if(collision_circle(x,y,640,obj_jon,false,false) and obj_jon.live){
		state = states.alert;	
	}
	scr_collition();
	scr_enemy_sprite();
	//Sprite
	//image_xscale = sign(move_X);
	
}