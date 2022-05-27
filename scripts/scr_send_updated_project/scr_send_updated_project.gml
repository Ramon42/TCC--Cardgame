// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_updated_project(_projeto1, _projeto2 = undefined, _card){ //_projeto1 = projeto da onde a carta saiu
																//_projeto2 = pra onde ela foi
	show_debug_message("CARTAS CADASTRADAS>> ");
	for(var i = 0; i <  ds_list_size(_projeto1.cards_in_project); i++){
		show_debug_message(string(_projeto1.cards_in_project[|i]));
		if (_projeto1.cards_in_project[|i].id == _card.id){ //encontrar a carta no projeto para excluir ela
			ds_list_delete(_projeto1.cards_in_project, i);
			array_delete(_projeto1.sprite_list, i, 1);
			obj_edit_project_menu.card_list[|i].x = -700;
			instance_destroy(obj_edit_project_menu);
			instance_destroy(obj_class_menu_parent_bt);
			scr_edit_project_create(_projeto1, true);
			
			//ds_list_delete(obj_edit_project_menu.card_list, i);
			break;
		}
	}
	if (_projeto2 != undefined){
		ds_list_add(_projeto2.cards_in_project, _card);
		show_message("CARTA ENVIADA PARA O NOVO PROJETO");
	}
	
	
	//chamar: scr_add_value_to_project() ao final para atualizar os valores
	//talvez atualizar a var card_list_size
}