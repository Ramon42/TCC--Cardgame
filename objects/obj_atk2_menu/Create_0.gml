/// @description Insert description here
// You can write your code in this editor

x_pos = room_width / 2;
y_pos = room_height / 2;

x = x_pos;
y = y_pos;

image_xscale = 3.5;
image_yscale = 3;

max_dmg = 1;
menu_list = noone;
a_info = [0, e_info.total] = 1;
a_info = [0, e_info.selected] = 0;

atacar_bt = instance_create_depth((room_width / 1.6)-300, room_height / 1.5, -5, obj_bloquear_bt);
slider = instance_create_depth(room_width / 2, room_height /2, -5, obj_slider);

enum e_info{
	total,
	selected
}