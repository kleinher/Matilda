if(pause){
	
	
	//GUN DISPLAY
	dir = point_direction(obj_jon.x,obj_jon.y,mouse_x,mouse_y);
	image_angle = dir;
	rotated = sign(lengthdir_x(1,dir));
	
	scr_shootBullet();
	
	//GUN POSITION
	y_gun= obj_jon.y+18;
	if(instance_exists(obj_jon)){
		
		if(!rotated){
			image_yscale = -1;
			x_gun= obj_jon.x-17;
		}else{
			image_yscale = 1;
			x_gun= obj_jon.x+17;
		}

		x=x_gun;
		y=y_gun;
	}
}