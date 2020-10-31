// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_table_Depth(){
var sprite_h = sprite_get_height(obj_NPC.sprite_index)
var instance = collision_circle(x,y,70,obj_NPC,false,false)
if(instance){
	if(obj_NPC.y + sprite_h/2 > y)
	{
		depth = 500
	}else{
		depth = 0	
	}	
}
}