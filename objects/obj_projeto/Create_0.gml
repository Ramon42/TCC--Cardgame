/// @description Insert description here
// You can write your code in this editor

image_xscale = 1.75;
image_yscale = 1.75;

aux_x = sprite_width/2
aux_y = sprite_height/2


col = x - aux_x*0.75;

lin_eng = y+20;
lin_esc = y+45;
lin_for = y+60;

sprite_list = array_create(0);

selected = false;
texto_auxiliar = "";
project_id = 0;
player_socket = noone;

cards_in_project = ds_list_create();
created = false;
edit_project_bt = noone;
create_instance_bt = noone;

final = false;
abstract = false;

del_card_in_hand = -1;
incr_decr = false;
last_card = noone;

forca_var = 0;
forca_cons = 0;

escudo_var = 0;
escudo_cons = 0;

energia = 0;

voo = noone;

atacar_1 = false;
atacar_2 = false;
defender = false;
refletir = false;
inverter = false;
agrupar_atacar = false;
usar_arma = false;
explodir = false;
destruir_arma = false;
voar = false;