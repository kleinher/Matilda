if(pause){
	
	
	//GUN DISPLAY
	dir = point_direction(obj_jon.x,obj_jon.y,mouse_x,mouse_y);
	
	rotated = sign(lengthdir_x(1,dir));
	
	scr_shootBullet();
	
	//GUN POSITION
	y_gun= obj_jon.y+15;
	if(instance_exists(obj_jon)){
		
		if(!rotated){
			image_angle = dir+180;
			sprite_index = spr_gun_left;
			x_gun= obj_jon.x-17;
		}else{
			image_angle = dir;
			sprite_index = spr_gun_right;
			x_gun= obj_jon.x+17;
		}

		x=x_gun;
		y=y_gun;
	}
}