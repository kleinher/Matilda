/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(rotacion < 90)
{
	new_dir = my_dir+rotacion;
	knife_X = enemy_X +lengthdir_x(attack_hitbox, new_dir );
	knife_Y = enemy_Y +lengthdir_y(attack_hitbox, new_dir );
	inst_debri = instance_create_layer(knife_X, knife_Y,"Instances_Arriba",obj_knife_Debri)
	inst_debri.image_angle = new_dir ;
	
	x=knife_X;
	y=knife_Y;
	rotacion +=5;
}else{
	instance_destroy();
	
}