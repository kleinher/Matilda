// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_alpha(){
	var instance = argument0, alpha = argument1;
	instance.image_alpha = alpha;
	scr_cutscene_end_action();
}