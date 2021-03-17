/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(place_meeting(x+40,y,obj_jon)){
	
	obj_lvl3_lvl4_puertas.sprite_index = spr_wall_lvl4
	if(!open){
		audio_play_sound(snd_open_door,1,false)
		open = true;
		obj_entrance3.open = false;
	}else{
		if(place_meeting(x,y,obj_jon)){
			room_goto(rm_lvl4);	
			obj_jon.x = 340
			obj_jon.y =	380
			obj_matilda.x = 330
			obj_matilda.y = 370
			obj_camera.x =  330
			obj_camera.y =	370
			
		}
		
	}
}