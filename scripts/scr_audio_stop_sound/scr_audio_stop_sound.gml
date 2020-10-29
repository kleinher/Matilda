// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_audio_stop_sound(){
	audio_stop_sound(argument0);
	scr_cutscene_end_action();
	
}