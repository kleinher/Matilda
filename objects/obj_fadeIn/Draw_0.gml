/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
a = clamp(a+ (fade * 0.05),0,1);



if(a == 0) && (fade == -1)
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(
	obj_camera.x - view_wport[0],
	obj_camera.y - view_hport[0],
	obj_camera.x  + view_wport[0],
	obj_camera.y + view_hport[0],
	0
)
draw_set_alpha(1);