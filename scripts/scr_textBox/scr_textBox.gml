// Script assets have changed for v2.3.0 see
/// @arg objeto
/// @arg texto
function scr_textBox(){
	var pj = argument0;
	var texto = argument1;
	if(!instance_exists(inst)){
		inst = instance_create_layer(pj.x,pj.y-100,"Dialogos",obj_textobox);
		inst.texto = texto;
		inst.objeto = pj;
	}

	if(instance_exists(inst) and global.teclaF){
		instance_destroy(inst);
		scr_cutscene_end_action();
	}
}