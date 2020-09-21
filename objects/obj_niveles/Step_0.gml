
if(distance_to_object(obj_jon) < camera_get_view_height(view_camera[0]) and !created){
	var i;
	var pos_y = -40 ;
	var pos_x = obj_niveles.sprite_width/2;

	for(i = 0; i < cantPuertas; i += 1){
		puertas[i] = instance_create_layer(x+pos_x,y + pos_y,"Lvl1",obj_puerta);
		puertas[i].posicion = sign(pos_x);
		pos_x *= -1;
		pos_y -= obj_puerta.sprite_height + 40;
	}
	created = true;

}
if(created){
	for(i = 0; i < array_length(puertas); i+=1){
		if(point_distance(puertas[i].x,puertas[i].y, obj_jon.x, obj_jon.y) < areaAggro){
			
			puertas[i].image_angle = 30 * puertas[i].posicion;
			if(!puertas[i].abierta){
				audio_play_sound(snd_puerta,1,false);
				puertas[i].abierta = true;
			}
			
		}
	}
}