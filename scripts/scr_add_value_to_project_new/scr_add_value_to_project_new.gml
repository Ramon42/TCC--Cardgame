// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_value_to_project_new(_card_list, _projeto){
	for (var _pos = 0; _pos < ds_list_size(_card_list); _pos++){
		switch (_card_list[|_pos].card_type){
			case CARDTYPE.VARIAVEL:
				switch (_card_list[|_pos].card_subtype){
					case SUBTYPE.FORCA:
						_projeto.forca_var = _card_list[|_pos].valor;
						ds_map_set(_projeto.attributes_map, "forca_v", _card_list[|_pos].valor);
					break;
					case SUBTYPE.ENERGIA:
						_projeto.energia = _card_list[|_pos].valor;
						ds_map_set(_projeto.attributes_map, "energia_v", _card_list[|_pos].valor);
					break;
					case SUBTYPE.ESCUDO:
						_projeto.escudo_var = _card_list[|_pos].valor;
						ds_map_set(_projeto.attributes_map, "escudo_v", _card_list[|_pos].valor);
					break;
					case SUBTYPE.VOO:
						_projeto.voo = _card_list[|_pos].valor;
					break;
				}
			break;
				
			case CARDTYPE.CONSTANTE:
				switch (_card_list[|_pos].card_subtype){
					case SUBTYPE.FORCA:
						_projeto.forca_cons = _card_list[|_pos].valor;
						ds_map_set(_projeto.attributes_map, "forca_c", _card_list[|_pos].valor);
					break;
					case SUBTYPE.ESCUDO:
						_projeto.escudo_cons = _card_list[|_pos].valor;
						ds_map_set(_projeto.attributes_map, "escudo_c", _card_list[|_pos].valor);
					break;
				}
			break;
			
			case CARDTYPE.METODO:
				switch(_card_list[|_pos].card_subtype){
					case SUBTYPE.ATACAR_1:
						_projeto.atacar_1 = true;
					break;
					
					case SUBTYPE.ATACAR_2:
						_projeto.atacar_2 = true;
				}
			break;
			
			
		}
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
						_projeto.energia = card_list[|i].valor;
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
					case SUBTYPE.ESCUDO:
						_projeto.escudo_cons = card_list[|i].valor;
						break;
				}
				break;
			
			
		}
	}
	*/
}