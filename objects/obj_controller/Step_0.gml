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

key_scape = keyboard_check_pressed(vk_escape)
