/// @description Insert description here
// You can write your code in this editor

x = room_width / 2;
y = room_height / 2;
depth = -3;
image_xscale = 3;
image_yscale = 2;

var_list = ds_list_create();
robo = noone;
var1 = noone;
var2 = noone;
save_bt = noone;

self.save_bt = instance_create_depth(self.x + self.x/4, self.y + self.y/4, -4, obj_inverter_bt);