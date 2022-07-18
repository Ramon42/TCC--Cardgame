/// @description ADIÇÃO DE OBJETOS AO PROJETO
// You can write your code in thi0 editor

card_list_size = ds_list_size(card_list);
var _debug_text = "CARD LIST EM EDIT PROJECT MENU> ";
for (var i = 0; i < card_list_size; i++){
	_debug_text = _debug_text + string(card_list[|i]) + ", ";
}
show_debug_message(_debug_text);
scr_org_cards_in_project(card_list, card_list_size);