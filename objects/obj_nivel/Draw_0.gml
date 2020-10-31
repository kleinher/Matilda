/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
a = clamp(a+ (fade * 0.04),0,1);

if(a == 1)
{
	//room_goto_next();
	fade = -1;
}

if(a == 0) && (fade == -1)
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);

draw_sprite(sprite,sprite,obj_camera.x,obj_camera.y)
draw_set_alpha(1);