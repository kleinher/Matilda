// HERE YOU CAN CHANGE SPRITE OF NPC AND USE DE XSCALE TO CHANGE THE WAY THEY FACE
// args instance
// args sprite
// args image_xindex
function scr_change_sprite(){
	var instance = argument0;
	var sprite = argument1;
	var xscale = argument2;
	var yscale = argument3;
	
	instance.sprite_index = sprite;
	instance.image_xscale = xscale;
	instance.image_yscale = yscale;
	scr_cutscene_end_action();
}