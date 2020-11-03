// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_unpause(){
	obj_NPC.pause = true;
	scr_cutscene_end_action();
}