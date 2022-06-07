/// @description Insert description here
// You can write your code in this editor
aux_x = sprite_width/2
aux_y = sprite_height/2
col = x - aux_x*0.75;
lin_for = y-aux_y/6;
lin_esc = y+aux_y/6;


selected = false;
attacking = false;
atk_path = false; //variavel para startar e parar o path de ataque
defending = false;

inst_proj_id = 0;
inst_sock_id = 0;
inst_id = 0;

forca_var = -1;
forca_cons = -1;

escudo_var = -1;
escudo_cons = -1;

energia_var = -1;
energia_cons = -1;

voo = noone;

atacar_1 = false;
atacar_2 = false;