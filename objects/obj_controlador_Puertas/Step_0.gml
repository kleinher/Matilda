table_collition = collision_rectangle(x,y,x+ancho,y+alto,obj_mesa,false,false)

	
//DOOR OPENS WHEN YOU ENTER A RECTANGULAR ZONE
//BIGGER ZONE
instance_collition = collision_rectangle(x,y,x+ancho,y+alto,obj_NPC,false,false)
if(instance_collition){
	
	obj_upWall.sprite_index = spr_upWallOpen;	
	if(puerta_sonido){audio_play_sound(snd_puerta,1,false); puerta_sonido = false}
	//SMALL ZONE
	instance_fade = collision_rectangle(x,y+80,x+ancho,y+250,obj_NPC,false,false);
	if(instance_fade){
		instance_fade.fade = true;
	}
	instance_collition.unfade = true;	
}else
{
	obj_upWall.sprite_index = spr_upWall	
	if(!puerta_sonido){audio_play_sound(snd_puerta,1,false); puerta_sonido = true;}
	
}
