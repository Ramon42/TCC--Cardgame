/// @description Insert description here
// You can write your code in this editor


x = room_width / 2;
y = room_height / 2;
depth = -10;
image_xscale = 2.5;
image_yscale = 3;

aux_x = sprite_width/2;
aux_y = sprite_height/2;

text = "";

lin1 = y-aux_y*0.83;
lin2 = y-aux_y*0.5;
lin3 = y-aux_y/6;
lin4 = y+aux_y/6;
lin5 = y+aux_y*0.5;
lin6 = y+aux_y*0.83;

ok_bt = instance_create_depth(x, lin6, -11, obj_ok_bt);