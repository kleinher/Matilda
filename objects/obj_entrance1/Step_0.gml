/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(place_meeting(x-10,y,obj_jon)){
	
	obj_lvl1_lvl2_puerta.sprite_index = spr_wall_lvl1	
	if(!open){
		audio_play_sound(snd_open_door,1,false)
		open = true;
		obj_entrance2.open = false;
	}else{
		if(place_meeting(x,y,obj_jon)){
			room_goto(rm_lvl1);	
			obj_jon.x = 340
			obj_jon.y =	380
			obj_matilda.x = 330
			obj_matilda.y = 370
			obj_camera.x =  330
			obj_camera.y =	370
		}
		
	}
	
}