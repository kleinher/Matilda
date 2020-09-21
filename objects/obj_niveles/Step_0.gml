
if(distance_to_object(obj_jon) < camera_get_view_height(view_camera[0]) and !created){
	var i;
	var pos_y = -40 ;
	var pos_x = obj_niveles.sprite_width/2;

	for(i = 0; i < cantPuertas; i += 1){
		show_debug_message("ENTRO")
		puertas[i] = instance_create_layer(x+pos_x,y + pos_y,"Lvl1",obj_puerta);
		pos_x *= -1;
		pos_y -= obj_puerta.sprite_height + 40;
	}
	created = true;

}