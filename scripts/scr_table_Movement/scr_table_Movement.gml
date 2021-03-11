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
	}else{
		if(!volteada and place_meeting(x+1*sign(obj_jon.x - x ),y+1*sign(obj_jon.y - y ),obj_jon)){
			move_Y = keyboard_check(ord("W")) + keyboard_check(ord("S"));
			if(move_Y){
			
				//DESPLAZAMIENTO VERTICAL
				move_Y = sign(y - obj_jon.y);

				if(!place_meeting(x,y+move_Y,obj_paredes)){
					y +=  move_Y
				}
				//AUDIO MESA
				if(!audio_is_playing(snd_table_move)){ audio_play_sound(snd_table_move,1,false)}
			}
			
			move_X = keyboard_check(ord("A")) + keyboard_check(ord("D"));
			if(move_X){
				
				//DESPLAZAMIENTO HORIZONTAL
				move_X = sign(x - obj_jon.x);
				if(!place_meeting(x+move_X,y,obj_paredes)){
					x +=  move_X
				}
				//AUDIO MESA 
				if(!audio_is_playing(snd_table_move)){ audio_play_sound(snd_table_move,1,false)}
			}
		}else{
			if(audio_is_playing(snd_table_move)){ audio_stop_sound(snd_table_move)}
		}
		
	}
	
	
}