
function scr_table_UpsideDown(){
	
if(collision_circle(x,y,50,obj_jon,false,false)){
	efe = keyboard_check(ord("F"))
	if(!volteada and efe){
		volteada = true;
		sprite_index = spr_table_Volteada
		audio_play_sound(snd_table,1,false);
	}
		
}
}