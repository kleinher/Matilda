// Script assets have changed for v2.3.0 see
// @args sprite
function scr_dibujarNivel(){
	var sprite = argument0;
	inst = instance_create_depth(0,0,-1,obj_nivel)
	inst.sprite = sprite;
	
}