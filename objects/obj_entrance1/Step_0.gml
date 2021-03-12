/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(place_meeting(x-5,y,obj_jon)){
	
	obj_lvl1_lvl2_puerta.sprite_index = spr_wall_lvl1	
	if(!open){
		audio_play_sound(snd_open_door,1,false)
		open = true;
		obj_entrance2.open = false;
	}
}