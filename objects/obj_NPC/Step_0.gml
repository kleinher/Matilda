/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//FADE OUT OF NPC
if(fade){
	a = clamp(a+ (-1 * fade_spd),0,1);
	image_alpha = a;
	if(image_alpha == 0)
	{
		fade = false;	
	}
}
else
{
	//FADE IN OF NPC	
	if(unfade){
		a = clamp(a+fade_spd,0,1);
		image_alpha = a;
		if(image_alpha == 1)
		{	
			unfade = false;	
		}
	}
}