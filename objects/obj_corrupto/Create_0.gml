/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();
script_state[states.idle] = scr_enemy_idle;
script_state[states.wonder] = scr_enemy_wonder;
script_state[states.alert] = scr_enemy_alert;
script_state[states.attack] = scr_enemy_attack;

state = 0;
counter = 0;
spd = 2;
attack_spd = 8;

my_dir = irandom_range(0,359);
move_X = lengthdir_x(spd, my_dir);
move_Y = lengthdir_y(spd, my_dir);
counter = 0;
image_speed = .4;

sprite_idle = spr_enemigo_d;
sprite_move = spr_enemigo_d;

inst_knife = noone;
attack_hitbox = 20;