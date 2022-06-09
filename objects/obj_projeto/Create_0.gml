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

selected = false;
show_text = "";
project_id = noone;
player_socket = noone;

cards_in_project = ds_list_create();
created = false;
edit_project_bt = noone;
create_instance_bt = noone;


forca_var = 0;
forca_cons = 0;

escudo_var = 0;
escudo_cons = 0;

energia = 0;

voo = noone;

atacar_1 = false;
atacar_2 = false;
defender = false;

attributes_map = ds_map_create();
ds_map_add(attributes_map, "forca_v", 0);
ds_map_add(attributes_map, "forca_c", 0);

ds_map_add(attributes_map, "escudo_v", 0);
ds_map_add(attributes_map, "escudo_c", 0);

ds_map_add(attributes_map, "energia_v", 0);
ds_map_add(attributes_map, "energia_c", 0);