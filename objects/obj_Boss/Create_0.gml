/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

spd = 4;
alert_spd = 6;
attack_spd = 8;

my_dir = irandom_range(0,359);
move_X = lengthdir_x(spd, my_dir);
move_Y = lengthdir_y(spd, my_dir);
image_speed = .4;
pause = false;
sprite_idle = spr_Boss_d;
sprite_move = spr_Boss_d;

inst_knife = noone;
attack_hitbox = 20;