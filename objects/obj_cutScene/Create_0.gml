timer = 0;
scene = 0;
inst = noone;

scene_info = [
	[scr_pause],
	//[scr_audio_play_sound,],
	[scr_cutscene_wait,1],
	//[scr_moveCamera,obj_matilda],
	[scr_moveCamera,obj_matilda],
	[scr_moveCharacter, obj_matilda,30,400,true,5],
	[scr_textBox,obj_matilda,"Please let me in "],
	[scr_textBox,obj_matilda,"[c_red] DEJAME ENTRAR LA CONCHA DE TU MADRE"],
	[scr_textBox,obj_matilda,"[c_red] [shake] DALE QUE ME CAGO QUEMANDO [/shake]"],
	[scr_textBox,obj_matilda,"[wave] SKEREEEEEEEEEEEEEE [/wave]"],
	[scr_textBox,obj_matilda,"[fa_center] [wobble] Y bueno nada resulta que yo venia pisteando  como un campeon [/wobble] [/fa_centre]"],
	[scr_textBox,obj_matilda,"Y un [pulse] automovil [/pulse] se me atravezo y bueno [wheel][c_blue]ahora no se como estoy [/c_blue][/wheel]"],
	//[scr_cutscene_wait,3],
	[scr_unpause],
	//[scr_audio_play_sound],
	[scr_moveCamera,obj_matilda],
	
]

event_perform(ev_other, ev_user0);

x_dest = -1;
y_dest = -1;