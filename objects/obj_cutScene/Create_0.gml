timer = 0;
scene = 0;

scene_info = [
	[scr_pause],
	//[scr_audio_play_sound,],
	[scr_cutscene_wait,1],
	[scr_moveCharacter, obj_matilda,30,-400,true,4],
	
	[scr_cutscene_wait,3],
	[scr_unpause],
	//[scr_audio_play_sound],
	//[scr_moveCharacter],
]

event_perform(ev_other, ev_user0);

x_dest = -1;
y_dest = -1;