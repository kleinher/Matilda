
if(instance_exists(obj_jon)){
	if(rotated){
		x_gun= obj_jon.x-7*2;
		y_gun= obj_jon.y-11*2;
	}else{
		x_gun= obj_jon.x+7*2;
		y_gun= obj_jon.y-11*2;
	}

	x=x_gun;
	y=y_gun;
}
scr_shootBullet();
depth = obj_jon.depth-1;

image_xscale = 1;
image_yscale = 1;