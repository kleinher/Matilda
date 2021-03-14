/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
scr_conversacion();
image_angle+=1;

a = clamp(a+ (fade * 0.05),1,2);
//El fade -1 está en scr_fadeOut

if(image_xscale >= 2)
{
	fade = -1
}else{
	if(image_xscale <= 1){
		fade = 1	
	}
}
image_xscale = a;
image_yscale = a;