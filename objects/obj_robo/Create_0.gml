/// @description Insert description here
// You can write your code in this editor
aux_x = sprite_width/2
aux_y = sprite_height/2
col = x - aux_x*0.75;
lin_for = y-aux_y/6;
lin_esc = y+aux_y/6;
lin_eng = y+60;;

depth = -1;

pth = noone;


//limitações
executou_metodo = false;

selected = false;

attacking1 = false;
attacking2 = false;
atirar = false;
explode = false;

atk2_count = 0;
dmg_rest = 0;
atk_list = array_create(0);

atk_path = true; //variavel para startar e parar o path de ataque
sprite_list = [];
atk1_bt = noone;
atk2_bt = noone;
voar_bt = noone;
inverter_bt = noone;
explodir_bt = noone;
usar_arma_bt = noone;
arma = noone;
bt_pos = [[75, 680], [175 ,680],
		  [75, 755], [175, 755],
		  [75, 830], [175, 830]];
		  
defending = false;
atk_direct = true; //caso seja true, o jogador atacará o oponente diretamente

atk_menu = noone;

inst_proj_id = 0;
inst_sock_id = 0;
inst_id = 0;

texto_auxiliar = ""

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
inverter = false;
agrupar_atacar = false;
explodir = false;
usar_arma = false;
destruir_arma = false;
voar = false;