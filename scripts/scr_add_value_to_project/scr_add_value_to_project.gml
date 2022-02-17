// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_value_to_project(_projeto){
	var _pos = card_list_size -1;
	switch (card_list[|_pos].card_type){
		case CARDTYPE.VARIAVEL:
			switch (card_list[|_pos].card_subtype){
				case SUBTYPE.FORCA:
					_projeto.forca_var = card_list[|_pos].valor;
					ds_map_set(_projeto.attributes_map, "forca_v", card_list[|_pos].valor);
					break;
				case SUBTYPE.ENERGIA:
					_projeto.energia_var = card_list[|_pos].valor;
					ds_map_set(_projeto.attributes_map, "energia_v", card_list[|_pos].valor);
					break;
				case SUBTYPE.ESCUDO:
					_projeto.escudo_var = card_list[|_pos].valor;
					ds_map_set(_projeto.attributes_map, "escudo_v", card_list[|_pos].valor);
					break;
				case SUBTYPE.VOO:
					_projeto.voo = card_list[|_pos].valor;
					break;
			}
			break;
				
		case CARDTYPE.CONSTANTE:
			switch (card_list[|_pos].card_subtype){
				case SUBTYPE.FORCA:
					_projeto.forca_cons = card_list[|_pos].valor;
					ds_map_set(_projeto.attributes_map, "forca_c", card_list[|_pos].valor);
					break;
				case SUBTYPE.ENERGIA:
					_projeto.energia_cons = card_list[|_pos].valor;
					ds_map_set(_projeto.attributes_map, "energia_c", card_list[|_pos].valor);
					break;
				case SUBTYPE.ESCUDO:
					_projeto.escudo_cons = card_list[|_pos].valor;
					ds_map_set(_projeto.attributes_map, "escudo_c", card_list[|_pos].valor);
					break;
			}
			break;
			
			
		}
	
	/*
	for (var i = 0; i < card_list_size; i++){
		switch (card_list[|i].card_type){
			case CARDTYPE.VARIAVEL:
				switch (card_list[|i].card_subtype){
					case SUBTYPE.FORCA:
						_projeto.forca_var = card_list[|i].valor;
						break;
					case SUBTYPE.ENERGIA:
						_projeto.energia_var = card_list[|i].valor;
						break;
					case SUBTYPE.ESCUDO:
						_projeto.escudo_var = card_list[|i].valor;
						break;
					case SUBTYPE.VOO:
						_projeto.voo = card_list[|i].valor;
						break;
				}
				break;
				
			case CARDTYPE.CONSTANTE:
				switch (card_list[|i].card_subtype){
					case SUBTYPE.FORCA:
						_projeto.forca_cons = card_list[|i].valor;
						break;
					case SUBTYPE.ENERGIA:
						_projeto.energia_cons = card_list[|i].valor;
						break;
					case SUBTYPE.ESCUDO:
						_projeto.escudo_cons = card_list[|i].valor;
						break;
				}
				break;
			
			
		}
	}
	*/
}