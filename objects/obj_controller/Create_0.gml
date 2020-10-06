/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
enum states {
	idle,
	wonder,
	alert,
	attack
}

global.teclaF = noone;



//Initialization of Scribble variables

scribble_init("", "fnt_textBox", false);

//Add the font called "fnt_dialogue" to Scribble
scribble_add_font("fnt_textBox");
