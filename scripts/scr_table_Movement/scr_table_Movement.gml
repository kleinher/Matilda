// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_table_Movement(){
	if(place_meeting(x,y-1,obj_jon) and volteada){
		obj_jon.image_index = 0;
		y += spd;	
		if(obj_jon.x - x > 0){
			a = clamp(a -(1*spd),-10,0);
			image_angle = clamp(a,image_angle-10,image_angle);
		}else{
			a = clamp(a +(1*spd),0,10)
			image_angle = clamp(a,image_angle,image_angle+10);	
		}
		b+=1;
		show_debug_message(b)
	}
	
	
}