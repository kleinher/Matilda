/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
camera = camera_create();
global.view_height = 1080;
global.view_width = 1920;
var vm = matrix_build_lookat(x,y,0,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(global.view_width,global.view_height,1,10000);


camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

follow = obj_jon;
xTo = x;

yTo = y;

last_room = room;

