/// @description Inserte aquí la descripción
global.teclaF = keyboard_check_pressed(ord("F"))
if(key_scape){
     pause = !pause;
	if(pause)
	{
		
		id_menu = instance_create_depth(0,0,-1000,menu);	
		obj_camera.follow = id_menu;
		obj_NPC.vivir = false;
	}
	else
	{
		obj_camera.follow = obj_jon;
		instance_destroy(id_menu);
		obj_NPC.vivir = true;
	}
}

key_scape = keyboard_check_pressed(vk_escape)
