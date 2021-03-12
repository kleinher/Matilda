///@description move_character
///@arg obj
///@arg x
///@arg y
///@arg	relative?
///@arg spd
///@arg sprite
///@arg xscale

function scr_moveCharacter(){
var obj = argument0, relative =argument3, spd = argument4, sprite = argument5,xscale = argument6;

if(x_dest == -1)
{
	if(!relative){
		
		x_dest = argument1;
		y_dest = argument2;
		
	} else{
		
		x_dest = obj.x + argument1;
		y_dest = obj.y + argument2;
		
	}
} 

var xx = x_dest;
var yy = y_dest;

with(obj){
	//Sprite walk
	sprite_index = sprite;
	image_xscale = xscale;
	if(point_distance(x,y,xx,yy) >= spd){
		var dir = point_direction(x,y,xx,yy);
		var ldirx = lengthdir_x(spd,dir);
		var ldiry = lengthdir_y(spd,dir);
	
		//if(ldirx != 0) { image_xscale = sign(ldirx); }
		//if(!audio_is_playing(snd_pasos)){audio_play_sound(snd_pasos,1,false)}
			x += ldirx;
			y += ldiry;
		} else {
			// Sprite idle	
			sprite_index = sprite_index[0]
			x = xx;
			y = yy;
		with(other){
			x_dest = -1;
			y_dest = -1;
			scr_cutscene_end_action();
		}
	}
}
}