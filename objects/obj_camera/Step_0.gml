




//x += (xTo-x)/25;
y_aux = y+(yTo-y)/25;
if(y_aux < room_height-global.view_height/2){
	y = y_aux
}
if(follow != noone){
	//xTo = follow.x;
	yTo = follow.y;
	
}
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(global.view_width,global.view_height,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);