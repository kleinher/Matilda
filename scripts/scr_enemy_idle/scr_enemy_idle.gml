
function scr_enemy_idle(){
	//Behaviour
	counter += 1;
	
	//Transition Triggers
	if(counter >= room_speed * 3){
		var change = choose(0,1);
		switch(change){
			case 0: state = states.wonder;
			case 1: counter = 0; break;
		}
	}
	if(collision_circle(x,y,640, obj_jon, false, false)){
		state = states.alert;
	}
	
	//Sprite
	sprite_index = spr_enemigo_d;
	image_index = 0;
} 