/// @description Insert description here
// You can write your code in this editor

x_pos = room_width / 7;
y_pos = room_height / 2;

image_xscale =  1.5;
image_yscale = 7;

x = x_pos;
y = y_pos;
aux_x = sprite_width/2;
aux_y = sprite_height/2;

//DIVIDINDO ESSA TELA EM 4 COLUNAS
col1_m = x_pos - aux_x/2;
col2_m = x_pos + aux_x/2;

//DIVISÃO EM 6 LINHAS
lin1_m = y_pos-aux_y*0.83;
lin2_m = y_pos-aux_y*0.5;
lin3_m = y_pos-aux_y/6;
lin4_m = y_pos+aux_y/6;
lin5_m = y_pos+aux_y*0.5;
lin6_m = y_pos+aux_y*0.83;

pos_m = [[col1_m, lin1_m], [col2_m, lin1_m],
		 [col1_m, lin2_m], [col2_m, lin2_m],
		 [col1_m, lin3_m], [col2_m, lin3_m],
		 [col1_m, lin4_m], [col2_m, lin4_m],
		 [col1_m, lin5_m], [col2_m, lin5_m]];

project = noone;

scr_set_project_to_move(pos_m); //atualiza a posição dos projetos para mover
//scr_org_move_project(); //organiza os projetos dentro do menu de mover carta

cancel_move_bt = instance_create_depth(aux_x, lin6_m, -4, obj_cancel_bt);