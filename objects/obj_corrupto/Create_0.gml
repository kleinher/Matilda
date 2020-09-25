/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


script_state[states.idle] = scr_enemy_idle();
script_state[states.wonder] = scr_enemy_wonder();
script_state[states.alert] = scr_enemy_alert();
script_state[states.attack] = scr_enemy_attack();


state = states.idle;