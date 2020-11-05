// Script assets have changed for v2.3.0 see
// @arg objeto
function scr_moveCamera(){
	show_debug_message(argument0)
	obj_camera.follow = argument0;
	scr_cutscene_end_action();
}