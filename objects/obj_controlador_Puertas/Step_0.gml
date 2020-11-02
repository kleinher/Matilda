//DOOR OPENS WHEN YOU ENTER A RECTANGULAR ZONE
instance_collition= collision_rectangle(x,y,x+ancho,y+alto,obj_NPC,false,false)

if(instance_collition){
	
	obj_upWall.sprite_index = spr_upWallOpen;	
	instance_fade =collision_rectangle(x,y+80,x+ancho,y+250,instance_collition,false,false);
	
	//FADE OUT OF NPC
	if(instance_fade){
		instance_unfade = instance_fade
		a = clamp(a+ (fade_OUT * fade_spd),0,1);
		instance_fade.image_alpha = a;
	}
	else
	{	
	//FADE IN OF NPC	
		if(instance_unfade){
			a = clamp(a+fade_spd,0,1);
			instance_unfade.image_alpha = a;
		}
	}
}

//THIS IS WHEN YOU ARE OUT OF THE RECTANGULAR ZONE (MAYBE DOORS CLOSES)
else {
	
	//obj_upWall.sprite_index = spr_upWall;	
		
}