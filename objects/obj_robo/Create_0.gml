/// @description Insert description here
// You can write your code in this editor
aux_x = sprite_width/2
aux_y = sprite_height/2
col = x - aux_x*0.75;
lin_for = y-aux_y/6;
lin_esc = y+aux_y/6;

pth = noone;

selected = false;
attacking = false;
atk_path = true; //variavel para startar e parar o path de ataque
atk_bt = noone;
defending = false;
atk_direct = true; //caso seja true, o jogador atacará o oponente diretamente

inst_proj_id = 0;
inst_sock_id = 0;
inst_id = 0;

forca_var = 0;
forca_cons = 0;

escudo_var = 0;
escudo_cons = 0;

energia = 0;

voo = noone;

atacar_1 = false;
atacar_2 = false;
refletir = false;
defender = false;
voar = false;