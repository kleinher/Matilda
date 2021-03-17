/// @description Inserte aquí la descripción
global.teclaF = keyboard_check_pressed(ord("F"))

if(key_scape){
     pause = !pause;
	if(pause)
	{
		id_menu = instance_create_depth(obj_jon.x,obj_jon.y,-1,menu);	
		obj_camera.follow = id_menu;
		obj_NPC.pause = false;
	}
	else
	{
		obj_camera.follow = obj_jon;
		instance_destroy(id_menu);
		obj_NPC.pause = true;
	}
}
if(room != last_room){
	last_room = room;
	audio_play_sound(snd_nuve,1,false);
	instance_create_layer(obj_jon.x,obj_jon.y-26,"Dialogos",obj_nuve);
}
key_scape = keyboard_check_pressed(vk_escape)
