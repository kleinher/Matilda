/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
timer = 0;
scene = 0;
inst = noone;
scene_info = [
	[scr_pause],
	[scr_audio_play_sound, snd_suspenso,1,false],
	[scr_fadeIn],
	[scr_moveCharacter,obj_matilda,obj_jon.x,obj_jon.y-150,false,3,spr_matilda_d_idle,1],
	[scr_cutscene_wait,1],
	[scr_fadeOut],
	//DIALOG
	[scr_moveCamera,obj_jon],
	[scr_audio_play_sound, snd_0,1,false],
	[scr_textBox,obj_jon,"Revenge is not good, Matilda, belive me it's better to forget."],
	
	[scr_moveCamera,obj_matilda],
	[scr_audio_play_sound, snd_1,1,false],
	[scr_textBox,obj_matilda,"You won't get the bastards who killed my whole family?"],
	
	[scr_moveCamera,obj_jon],
	[scr_audio_play_sound, snd_2,1,false],
	[scr_textBox,obj_jon,"Nothing is the same after you've killed someone."],
	
	[scr_moveCamera,obj_jon],
	[scr_audio_play_sound, snd_3,1,false],
	[scr_textBox,obj_jon,"Your life is changed forever."],
	
	[scr_moveCamera,obj_jon],
	[scr_audio_play_sound, snd_4,1,false],
	[scr_textBox,obj_jon,"You'll have to sleep with one eye open for the rest of your life."],
	
	[scr_moveCamera,obj_matilda],
	[scr_audio_play_sound, snd_5,1,false],
	[scr_textBox,obj_matilda,"I don't give a shit about sleeping, Leon."],
	
	[scr_moveCamera,obj_matilda],
	[scr_audio_play_sound, snd_6,1,false],
	[scr_textBox,obj_matilda,"I want love..."],
	
	[scr_moveCamera,obj_matilda],
	[scr_audio_play_sound, snd_7,1,false],
	[scr_textBox,obj_matilda,"...or death."],
	
	[scr_moveCamera,obj_jon],
	[scr_audio_play_sound, snd_8,1,false],
	[scr_textBox,obj_jon,"Love or death?"],
	
	[scr_moveCamera,obj_jon],
	[scr_audio_play_sound, snd_9,1,false],
	[scr_textBox,obj_jon,"Get off my case, Matilda. I'm tired of your games."],
	
	
	
	
	[scr_unpause],
]



event_perform(ev_other, ev_user0);

x_dest = -1;
y_dest = -1;