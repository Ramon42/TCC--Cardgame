/// @description Insert description here
// You can write your code in this editor

image_xscale = 3.5;
image_yscale = 3.5;

aux_x = sprite_width/2
aux_y = sprite_height/2


col = x - aux_x*0.75;

lin_for = y-aux_y/6;
lin_esc = y+aux_y/6;

obj_list = array_create(0);
sprite_list = array_create(0);
created = false;

player_socket = 0;

forca_var = -1;
forca_cons = -1;

escudo_var = -1;
escudo_cons = -1;

energia_var = -1;
energia_cons = -1;

voo = noone;

attributes_map = ds_map_create();
ds_map_add(attributes_map, "forca_v", -1);
ds_map_add(attributes_map, "forca_c", -1);

ds_map_add(attributes_map, "escudo_v", -1);
ds_map_add(attributes_map, "escudo_c", -1);

ds_map_add(attributes_map, "energia_v", -1);
ds_map_add(attributes_map, "energia_c", -1);