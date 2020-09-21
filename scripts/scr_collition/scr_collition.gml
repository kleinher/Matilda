// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_colitionSystem(){
//-------------------DETECT COLITION WITH SOME OBJECT
	//----- HORIZONTAL
	if(move_X != 0 ){
		if(place_meeting(x+move_X,y,obj_interactuable)){
			
			repeat(abs(move_X)){
				show_debug_message("asdf")
				if(!place_meeting(x+sign(move_X),y,obj_interactuable)){ x += sign(move_X) }
			
			}
			move_X = 0
		}
	}

	//----- VERTICAL
	if(move_Y != 0 ){
		if(place_meeting(x,y+move_Y,obj_interactuable)){
			
			repeat(abs(move_Y)){
				if(!place_meeting(x,y+sign(move_Y),obj_interactuable)){ y += sign(move_Y) }

			}
			move_Y = 0
		}
	}
}