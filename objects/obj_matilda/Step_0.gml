/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(instance_exists(obj_jon)){
 if( distance_to_object(obj_jon) > 50 ){
	x += sign(obj_jon.x - x) * spd;
	y += sign(obj_jon.y - y) * spd;
	 
	 
 }
	
}