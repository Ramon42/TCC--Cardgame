/// @description Insert description here
// You can write your code in this editor

x_pos = room_width / 1.6;
y_pos = room_height / 2;

x = x_pos;
y = y_pos;

image_xscale = 1.5;
image_yscale = 1;

atk_recebido = 0;
escudo = 0;
dmg_restante = 0;

msg = "";
atk = noone;
def = noone;

bloquear_bt = instance_create_depth((room_width / 1.6)-300, room_height / 1.5, -5, obj_bloquear_bt);
n_bloquear_bt = instance_create_depth((room_width / 1.6)+300, room_height / 1.5, -5, obj_n_bloquar_bt);