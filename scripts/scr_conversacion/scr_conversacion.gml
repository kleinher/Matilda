// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_conversacion(){
	if(place_meeting(x,y,obj_jon) and !escena){
		escena = instance_create_depth(x,y,0,obj_conversation)
	}
}
