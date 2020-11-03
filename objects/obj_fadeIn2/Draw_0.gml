/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
a = clamp(a+ (fade * 0.03),0,1);

//El fade -1 está en scr_fadeOut
if(a == 1)
{
	fade = -1;
	instance_create_depth(0,0,-1,menu)
	show_message("entro")
}
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