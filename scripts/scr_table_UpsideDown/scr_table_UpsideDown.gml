
function scr_table_UpsideDown(){
	
if(collision_circle(x,y,50,obj_jon,false,false)){
	efe = keyboard_check(ord("F"))
	if(!volteada and efe and alarm[0] < 0){
		volteada = true;
		y += 50;
		sprite_index = spr_table_Volteada
		audio_play_sound(snd_table,1,false);
		efe = false
		alarm[0] = 60
	}else{ 
		if(volteada and efe and alarm[0] < 0){
			if(y < obj_jon.y+10){
				sprite_index = spr_table;		
				y -= 50
				audio_play_sound(snd_table,1,false);
				volteada = false;
				efe = false
				alarm[0] = 60
			}
		}
	}
		
}
}