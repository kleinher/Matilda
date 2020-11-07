// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_imagespeed(){
	var imagespeed = argument1;
	var instance = argument0;
	
	instance.image_speed = imagespeed;
	scr_cutscene_end_action();
}