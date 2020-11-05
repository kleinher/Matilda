timer = 0;
scene = 0;
inst = noone;

//instances used in cutscene
enemy1 = instance_create_layer(170,-450,"Instances_Arriba",obj_corrupto);
enemy2 = instance_create_layer(170,-325,"Instances_Arriba",obj_corrupto);
enemy3 = instance_create_layer(400,-400,"Instances_Arriba",obj_corrupto);
 
scene_info = [
	[scr_pause],
	[scr_audio_play_sound, snd_bandidos,1,false],
	[scr_moveCamera,enemy1],
	[scr_move_Many_Characters,enemy1,enemy2],
	[scr_change_sprite,enemy1,spr_enemigo_dl,-1],
	[scr_change_sprite,enemy2,spr_enemigo_ul,1],
	[scr_cutscene_wait,0.1],
	[scr_change_sprite,enemy1,spr_enemigo_l,-1],
	[scr_change_sprite,enemy2,spr_enemigo_u,1],
	[scr_cutscene_wait,0.1],
	[scr_change_sprite,enemy2,spr_enemigo_ul,-1],
	[scr_cutscene_wait,0.1],
	[scr_change_sprite,enemy2,spr_enemigo_l,-1],
	[scr_change_sprite,enemy3,spr_Boss_d,1],
	[scr_moveCharacter, enemy3,0,1125,true,2],
	[scr_cutscene_wait,3],
	[scr_moveCharacter, enemy3,-300,0,true,2],
	[scr_cutscene_wait,3],
	[scr_audio_stop_sound, snd_bandidos],
	[scr_fadeIn],
	[scr_cutscene_wait,3],
	[scr_audio_play_sound, snd_cutscene_PulpFiction,1,false],
	[scr_cutscene_wait,7],
	[scr_fadeOut],
	[scr_moveCamera,obj_matilda],
	[scr_audio_play_sound, snd_matilda_scene1,1,false],
	[scr_cutscene_wait,3],
	[scr_moveCharacter, obj_matilda,10,400,true,2],
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