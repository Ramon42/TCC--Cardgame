// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_card_to_project(_project, _card_list, _card_list_size){
	var _pos_var = 1;
	var _pos_meth = 1;
	var _pos_meth_2 = 1;
	for (var i = 0; i < _card_list_size; i++){
		if (instance_exists(_card_list[|i])){
			switch(_card_list[|i].card_type){
				case CARDTYPE.CLASSE:
					_card_list[|i].x = 500;
					_card_list[|i].y = 500;
					_card_list[|i].x_pos = 500;
					_card_list[|i].y_pos = 500;
					_card_list[|i].depth = -3;
					break;
				
				case CARDTYPE.VARIAVEL:
					_card_list[|i].x = col1;
					_card_list[|i].y = lines[_pos_var];
					_card_list[|i].x_pos = col1;
					_card_list[|i].y_pos = lines[_pos_var];
					_card_list[|i].depth = -3;
					_pos_var++;
					break;
				
				case CARDTYPE.CONSTANTE:
					_card_list[|i].x = col1;
					_card_list[|i].y = lines[_pos_var];
					_card_list[|i].x_pos = col1;
					_card_list[|i].y_pos = lines[_pos_var];
					_card_list[|i].depth = -3;
					_pos_var++;
					break;
			
				case CARDTYPE.METODO:
					if (_pos_meth < 6){
						_card_list[|i].x = col2;
						_card_list[|i].y = lines[_pos_meth];
						_card_list[|i].x_pos = col3;
						_card_list[|i].y_pos = lines[_pos_meth];
						_card_list[|i].depth = -3;
						_pos_meth++;
					}
					else {
						_card_list[|i].x = col3;
						_card_list[|i].y = lines[_pos_meth_2];
						_card_list[|i].x_pos = col3;
						_card_list[|i].y_pos = lines[_pos_meth_2];
						_card_list[|i].depth = -3;
						_pos_meth_2++;
					}
					break;
			}
		}
	}
	_project.cards_in_project = _card_list;
}