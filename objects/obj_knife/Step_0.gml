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
	rotacion +=10;
}else{
	instance_destroy();
	
}
if(sangre){
	repeat(50){
		debri = instance_create_layer(obj_jon.x,obj_jon.y,"Instances_Abajo",obj_blood_debri);
		debri.distance = irandom_range(0,40);
		debri.direction = irandom_range(image_angle-20,image_angle+20);
	}
	
}