// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_updated_project(_projeto1, _projeto2 = undefined, _card){ //_projeto1 = projeto da onde a carta saiu
																//_projeto2 = pra onde ela foi
	for(var i = 0; i <  array_length_1d(_projeto1.obj_list); i++){
		if (_projeto1.obj_list[i].id == _card.id){ //encontrar a carta no projeto para excluir ela
			show_message("CARTA ENCONTRADA NO PROJETO");
		}
	}
	if (_projeto2 != undefined){
		array_push(_projeto2.obj_list, _card);
		show_message("CARTA ENVIADA PARA O NOVO PROJETO");
	}
	
	
	//chamar: scr_add_value_to_project() ao final para atualizar os valores
	//talvez atualizar a var card_list_size
}