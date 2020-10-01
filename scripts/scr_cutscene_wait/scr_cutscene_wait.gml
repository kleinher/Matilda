// @arg seconds
function scr_cutscene_wait(){
	if(timer >=  argument0 * room_speed)
	{
		timer = 0;	
		scr_cutscene_end_action();
		show_debug_message("entro wait")
	}
	timer ++;
}