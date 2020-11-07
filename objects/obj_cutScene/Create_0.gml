timer = 0;
scene = 0;
inst = noone;

//instances used in cutscene
enemy1 = instance_create_layer(170,-450,"Instances_Arriba",obj_corrupto);
enemy2 = instance_create_layer(170,-325,"Instances_Arriba",obj_corrupto);
Boss = instance_create_layer(400,-400,"Instances_Arriba",obj_Boss);
pared = instance_create_layer(60,882,"Paredes",obj_Rwall);
pared.image_yscale = -1;
Boss.image_alpha = 0;
obj_matilda.image_alpha = 0;
obj_muerto2.image_alpha = 0;
scene_info = [
	[scr_pause],
	//Enemys
	[scr_audio_play_sound, snd_bandidos,1,false],
	[scr_moveCamera,enemy1],
	[scr_move_Many_Characters,enemy1,enemy2],
	[scr_change_sprite,enemy1,spr_enemigo_dl,-1,1],
	[scr_change_sprite,enemy2,spr_enemigo_ul,1,1],
	[scr_cutscene_wait,0.1],
	[scr_change_sprite,enemy1,spr_enemigo_l_idle,-1,1],
	[scr_change_sprite,enemy2,spr_enemigo_u,1,1],
	[scr_cutscene_wait,0.1],
	[scr_change_sprite,enemy2,spr_enemigo_ul,-1,1],
	[scr_cutscene_wait,0.1],
	[scr_change_sprite,enemy2,spr_enemigo_l_idle,-1,1],
	//Boss
	[scr_change_alpha, Boss, 1],
	[scr_change_sprite,Boss,spr_Boss_d,1,1],
	[scr_moveCharacter,Boss,0,1125,true,2,spr_Boss_d,1],
	[scr_change_sprite,Boss,spr_Boss_d_idle,1,1],
	[scr_textBox,obj_Boss,"Al toque ahora los vamos a hacer cagar"],
	[scr_cutscene_wait,1],
	[scr_moveCharacter, Boss,-200,0,true,2,spr_Boss_L,1],
	[scr_change_sprite,pared,spr_wallOpen,1,-1,1],
	[scr_moveCharacter, Boss,-100,0,true,2,spr_Boss_L,1],
	[scr_moveCamera,enemy2],
	[scr_fadeOut_NPC, Boss],
	[scr_cutscene_wait,1],
	
	//ENEMYS2 ENTER
	[scr_change_sprite,enemy2,spr_enemigo_u,-1,1],
	//[scr_change_sprite,enemy2,spr_enemigo_d,1],
	[scr_cutscene_wait,0.1],
	[scr_moveCharacter,enemy2,170,735,false,2,spr_enemigo_u,1],
	[scr_change_sprite,enemy2,spr_enemigo_l,1,1],
	[scr_cutscene_wait,0.1],
	[scr_moveCharacter,enemy2,90,735,false,2,spr_enemigo_l,1],
	[scr_moveCamera,enemy1],
	[scr_fadeOut_NPC, enemy2],
	
	
	//Pulp fiction
	[scr_fadeIn],
	[scr_cutscene_wait,3],
	[scr_audio_play_sound, snd_cutscene_PulpFiction,1,false],
	[scr_change_alpha, obj_matilda, 1],
	[scr_moveCamera,obj_matilda],
	[scr_cutscene_wait,7],
	
	
	//Matilda
	[scr_change_alpha,obj_muerto2, 1],
	[scr_audio_play_sound, snd_matilda_scene1,1,false],
	[scr_fadeOut],
	[scr_moveCharacter, obj_matilda,325,525,false,2,spr_matilda_d,1],
	[scr_change_sprite,obj_matilda,spr_matilda_d_idle,1,1],
	[scr_cutscene_wait,0.5],
	[scr_change_imagespeed, obj_matilda,0.3],
	[scr_moveCharacter, obj_matilda,325,1050,false,1,spr_matilda_d,1],
	[scr_change_sprite,obj_matilda,spr_matilda_d_idle,1,1],
	
	
	//Dialog
	[scr_textBox,obj_matilda,"Please let me in "],
		[scr_moveCamera,obj_jon],
	[scr_textBox,obj_jon,"Ni apalo loca rescatate"],
		[scr_moveCamera,obj_matilda],
	[scr_textBox,obj_matilda,"Por favor wachin"],
		[scr_moveCamera,obj_jon],
	[scr_textBox,obj_jon,"Ni a palo estas re sarpada en logi"],
		[scr_moveCamera,obj_matilda],
	[scr_textBox,obj_matilda,"Me estan por [c_red] [shake] re matar [/shake] [c_white]estos loros perrito abrime"],
		[scr_moveCamera,obj_jon],
	[scr_textBox,obj_jon,"[wobble] Vo tene que pregunta nosotro primero [/wobble]"],

	/*[scr_textBox,obj_matilda,"[c_red] DEJAME ENTRAR LA CONCHA DE TU MADRE"],
	[scr_textBox,obj_matilda,"[c_red] [shake] DALE QUE ME CAGO QUEMANDO [/shake]"],
	[scr_textBox,obj_matilda,"[wave] SKEREEEEEEEEEEEEEE [/wave]"],
	[scr_textBox,obj_matilda,"[fa_center] [wobble] Y bueno nada resulta que yo venia pisteando  como un campeon [/wobble] [/fa_centre]"],
	[scr_textBox,obj_matilda,"Y un [pulse] automovil [/pulse] se me atravezo y bueno [wheel][c_blue]ahora no se como estoy [/c_blue][/wheel]"],
	*///[scr_cutscene_wait,3],
	[scr_unpause],
	//[scr_audio_play_sound],
	
]

event_perform(ev_other, ev_user0);

x_dest = -1;
y_dest = -1;