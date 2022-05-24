/// @description Insert description here
// You can write your code in this editor

x_size = room_width / sprite_width - 3;
y_size = room_height / sprite_height - 2;

x_pos = room_width / 1.6;
y_pos = room_height / 2;

image_xscale =  x_size;
image_yscale = y_size;
x = x_pos;
y = y_pos;
aux_x = sprite_width/2;
aux_y = sprite_height/2;

//DIVIDINDO ESSA TELA EM 4 COLUNAS
col1_m = x_pos - aux_x*0.75;
col2_m = x_pos - aux_x/4;
col3_m = x_pos + aux_x/4;
col4_m = x_pos + aux_x*0.75;
columns_m = [col1_m, col2_m, col3_m, col4_m];

//DIVISÃO EM 6 LINHAS
lin1_m = y_pos-aux_y*0.83;
lin2_m = y_pos-aux_y*0.5;
lin3_m = y_pos-aux_y/6;
lin4_m = y_pos+aux_y/6;
lin5_m = y_pos+aux_y*0.5;
lin6_m = y_pos+aux_y*0.83;
lines_m = [lin1_m, lin2_m, lin3_m, lin4_m, lin5_m, lin6_m];

proj = con_client.player_proj;
for(var i = 0; i < array_length_1d(proj); i++){
	show_debug_message("PROJ EM MOVE CARD MENU>> "+ string(proj[i]));
}
scr_org_move_project(); //organiza os projetos dentro do menu de mover carta


cancel_move_bt = instance_create_depth(col4_m, lin5_m, -11, obj_cancel_bt);
select__move_bt = instance_create_depth(col4_m, lin6_m, -11, obj_save_class_bt); //mudar esse botão