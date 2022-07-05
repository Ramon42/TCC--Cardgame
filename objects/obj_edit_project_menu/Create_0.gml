/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

x_size = room_width / sprite_width - 2;
y_size = room_height / sprite_height - 1;

x_pos = room_width / 1.6;
y_pos = room_height / 2;


image_xscale =  x_size;
image_yscale = y_size;

x = x_pos;
y = y_pos;

aux_x = sprite_width/2;
aux_y = sprite_height/2;

//DIVIDINDO ESSA TELA EM 3 COLUNAS
col1 = x_pos - aux_x*0.75;
col2 = x_pos - aux_x/4;
col3 = x_pos + aux_x/4;
col4 = x_pos + aux_x*0.75;
columns = [col1, col2, col3, col4];

//DIVISÃO EM 6 LINHAS
lin1 = y_pos-aux_y*0.83;
lin2 = y_pos-aux_y*0.5;
lin3 = y_pos-aux_y/6;
lin4 = y_pos+aux_y/6;
lin5 = y_pos+aux_y*0.5;
lin6 = y_pos+aux_y*0.83;
lines = [lin1, lin2, lin3, lin4, lin5, lin6];


card_list = ds_list_create();
card_list_size = ds_list_size(card_list);
belongs_to_player = false;
projeto = noone;
moving_card = false;
alterado = false;

save_bt = instance_create_depth((col4), (lin6+20), -3, obj_save_class_bt);

