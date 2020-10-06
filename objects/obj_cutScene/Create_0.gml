timer = 0;
scene = 0;
inst = noone;

scene_info = [
	[scr_pause],
	//[scr_audio_play_sound,],
	[scr_cutscene_wait,1],
	[scr_moveCamera,obj_matilda],
	[scr_moveCharacter, obj_matilda,30,400,true,5],
	[scr_textBox,obj_matilda,"Please let me in"],
	//[scr_cutscene_wait,3],
	[scr_unpause],
	//[scr_audio_play_sound],
	
]

event_perform(ev_other, ev_user0);

x_dest = -1;
y_dest = -1;