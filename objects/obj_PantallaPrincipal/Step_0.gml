/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
a = clamp(a-0.1,3,50)
if(b >= 3){
	b = clamp(b-0.1,3,47)
}
if(a == 3 and first){
	first = false
	audio_play_sound(snd_Talando,1,false)
	alarm[1]= room_speed
}
show_debug_message(global.pause)