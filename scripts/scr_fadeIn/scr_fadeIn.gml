// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fadeIn(){
	instance_create_depth(obj_camera.x ,obj_camera.y,0,obj_fadeIn);
	show_debug_message("Entro")
	scr_cutscene_end_action();
}