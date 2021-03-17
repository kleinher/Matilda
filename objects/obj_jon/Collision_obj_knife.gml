/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
live = false;
sprite_index = spr_leon_dead_down 
if(alarm[0] < 0 and Only_one_death){
	alarm[0] = 3*room_speed;
}
if(Only_one_death){
	Only_one_death = false;
	instance_create_layer(x,y,"Instances",obj_blood_pool)
	//audio_play_sound(snd_blood,1,false);
	audio_play_sound(snd_knife,1,false);
}


		