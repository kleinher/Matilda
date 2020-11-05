// @args enemy1
// @args enemy2
function scr_create_enemys(){
	enemy1 = instance_create_layer(170,-500,"Instances_Arriba",obj_corrupto)
	enemy2 = instance_create_layer(170,-400,"Instances_Arriba",obj_corrupto)
	scr_cutscene_end_action()
	
}