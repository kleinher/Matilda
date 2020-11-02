// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_table_Depth(){
var sprite_h = sprite_get_height(obj_NPC.sprite_index)
var instance = collision_circle(x,y,70,obj_NPC,false,false)
if(instance){
	//SETS NPC DEPTH ON LAYER ABOVE TABLES
	if(instance.y + sprite_h/2 < y)
	{
		instance.depth = layer_get_depth("Instances_Abajo");
	}
	//SETS NPC DEPTH ON LAYER BELOW TABLES
	else if (instance.y + sprite_h/2 > y){
		instance.depth = layer_get_depth("Instances_Arriba");
	}	
}
}