// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//CHAMADO AO CLICAR EM ADICIONAR UMA CARTA EM OBJETO CREATE CLASS
function scr_org_cards_in_project(_card_list, _card_list_size){
	var _pos_var = 2;
	var _pos_cons = 2;
	var _pos_meth = 2;
	for (var i = 0; i < _card_list_size; i++){
		if (instance_exists(_card_list[|i])){
			switch(_card_list[|i].card_type){
				case CARDTYPE.CLASSE:
					_card_list[|i].x = 500;
					_card_list[|i].y = 500;
					_card_list[|i].x_pos = 500;
					_card_list[|i].y_pos = 500;
					_card_list[|i].depth = -2;
					break;
				
				case CARDTYPE.VARIAVEL:
					_card_list[|i].x = col1;
					_card_list[|i].y = lines[_pos_var];
					_card_list[|i].x_pos = col1;
					_card_list[|i].y_pos = lines[_pos_var];
					_card_list[|i].depth = -2;
					_pos_var++;
					show_message("POS VAR SIZE: " + string(_pos_var));
					break;
				
				case CARDTYPE.CONSTANTE:
					_card_list[|i].x = col2;
					_card_list[|i].y = lines[_pos_cons];
					_card_list[|i].x_pos = col2;
					_card_list[|i].y_pos = lines[_pos_cons];
					_card_list[|i].depth = -2;
					_pos_cons++;
					break;
			
				case CARDTYPE.METODO:
					_card_list[|i].x = col3;
					_card_list[|i].y = lines[_pos_meth];
					_card_list[|i].x_pos = col3;
					_card_list[|i].y_pos = lines[_pos_meth];
					_card_list[|i].depth = -2;
					_pos_meth++;
					break;
			}
		}
	}
}