/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(collision_rectangle(x,y,x+sprite_width,y+sprite_height,obj_NPC,false,false)){
	sprite_index = spr_upWallOpen
}else
{
	sprite_index = spr_upWall
}