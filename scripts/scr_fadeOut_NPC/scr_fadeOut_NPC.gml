//HERE YOU MAKE THE NPC FADE AWAY
// @args NPC
function scr_fadeOut_NPC(){
	var NPC = argument0
	NPC.image_alpha = clamp(NPC.image_alpha+ (-1* 0.05),0,1);
	if(NPC.image_alpha == 0){
		instance_destroy(NPC);	
		scr_cutscene_end_action();
	}
}