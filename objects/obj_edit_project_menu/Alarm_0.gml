/// @description ADIÇÃO DE OBJETOS AO PROJETO
// You can write your code in thi0 editor

card_list_size = ds_list_size(card_list);
for (var i = 0; i < card_list_size; i++){
	show_debug_message("CARD LIST EM EDIT PROJECT MENU> " + string(card_list[|i]));
}

scr_org_cards_in_project(card_list, card_list_size);