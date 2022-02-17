// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//CHAMADO AO CLICAR EM ADICIONAR UMA CARTA EM OBJETO CREATE CLASS
function scr_org_cards_in_project(){
	var _pos_var = 2;
	var _pos_cons = 2;
	var _pos_meth = 2;
	
	for (var i = 0; i < card_list_size; i++){
		switch(card_list[|i].card_type){
			case CARDTYPE.CLASSE:
				card_list[|i].x = 500;
				card_list[|i].y = 500;
				card_list[|i].depth = -2;
				break;
				
			case CARDTYPE.VARIAVEL:
				card_list[|i].x = col1;
				card_list[|i].y = lines[_pos_var];
				card_list[|i].depth = -2;
				_pos_var++;
				show_message("POS VAR SIZE: " + string(_pos_var));
				break;
				
			case CARDTYPE.CONSTANTE:
				card_list[|i].x = col2;
				card_list[|i].y = lines[_pos_cons];
				card_list[|i].depth = -2;
				_pos_cons++;
				break;
			
			case CARDTYPE.METODO:
				card_list[|i].x = col3;
				card_list[|i].y = lines[_pos_meth];
				card_list[|i].depth = -2;
				_pos_meth++;
				break;
		}
	}
}