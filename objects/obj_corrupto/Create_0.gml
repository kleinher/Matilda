/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


script_state[states.idle] = scr_enemy_idle;
script_state[states.wonder] = scr_enemy_wonder;
script_state[states.alert] = scr_enemy_alert;
script_state[states.attack] = scr_enemy_attack;

state = 0;
counter = 0;
spd = .5;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);
counter = 0;
