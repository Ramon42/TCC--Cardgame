// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_updated_project(_projeto1, _projeto2 = undefined, _card){ //_projeto1 = projeto da onde a carta saiu
																//_projeto2 = pra onde ela foi
	var aux_del = noone;
	var _aux_card = noone;
	show_debug_message("CARTAS CADASTRADAS>> ");

	
	for(var i = 0; i <  ds_list_size(_projeto1.cards_in_project); i++){
		show_debug_message(string(_projeto1.cards_in_project[|i]));
		if (_projeto1.cards_in_project[|i].id == _card.id){ //encontrar a carta no projeto para excluir ela
			ds_list_delete(_projeto1.cards_in_project, i);
			array_delete(_projeto1.sprite_list, i, 1);
			scr_reset_project_value(_projeto1);
			scr_add_value_to_project_new(_projeto1.cards_in_project, _projeto1);
			//
			buffer_seek(con_client.buffer, buffer_seek_start, 0);
			buffer_write(con_client.buffer, buffer_u8, network.send_edit_project);
			var _save_project = {
				sprite_list : _projeto1.sprite_list,
				player_socket : con_client.server_socket,
				project_id : _projeto1.project_id,
				forca_var : _projeto1.forca_var,
				forca_cons : _projeto1.forca_cons,
				escudo_var : _projeto1.escudo_var,
				escudo_cons : _projeto1.escudo_cons,
				energia : _projeto1.energia,
				attributes_map : _projeto1.attributes_map,
				voo : _projeto1.voo
			}
			var _data = json_stringify(_save_project);
			buffer_write(con_client.buffer, buffer_string, _data);
			network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
			//instance_destroy(_projeto1);
			
			//
			obj_edit_project_menu.card_list[|i].x = -700;
			_aux_card = obj_edit_project_menu.card_list[|i];
			aux_del = ds_list_find_index(obj_edit_project_menu.card_list, _card);
			show_message("AUX DEL>>> " + string(aux_del));
			ds_list_delete(obj_edit_project_menu.card_list, aux_del);
			//instance_destroy(_aux);
			
			//instance_destroy(obj_edit_project_menu);
			//instance_destroy(obj_class_menu_parent_bt);
			//_projeto1.created = false;
			//scr_edit_project_create(_projeto1, true);
			
			//ds_list_delete(obj_edit_project_menu.card_list, i);
			break;
		}
	}
	if (_projeto2 != undefined){
		ds_list_add(_projeto2.cards_in_project, _aux_card); //original é ds_list_add(_projeto2.cards_in_project, _card);
		array_push(_projeto2.sprite_list, _card.sprite_index);
		show_message("CARTA ENVIADA PARA O NOVO PROJETO");
		scr_add_value_to_project_new(_projeto2.cards_in_project, _projeto2);
		//enviando atualização do projeto que recebeu a carta
		buffer_seek(con_client.buffer, buffer_seek_start, 0);
		buffer_write(con_client.buffer, buffer_u8, network.send_edit_project);
		var _save_project = {
			sprite_list : _projeto2.sprite_list,
			image_xscale : _projeto2.image_xscale,
			image_yscale : _projeto2.image_yscale,
			player_socket : con_client.server_socket,
			project_id : _projeto2.project_id,
			forca_var : _projeto2.forca_var,
			forca_cons : _projeto2.forca_cons,
			escudo_var : _projeto2.escudo_var,
			escudo_cons : _projeto2.escudo_cons,
			energia : _projeto2.energia,
			attributes_map : _projeto2.attributes_map,
			voo : _projeto2.voo
		}
		var _data = json_stringify(_save_project);
		buffer_write(con_client.buffer, buffer_string, _data);
		network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
		//instance_destroy(_projeto2);
	}
	
	//ENVIANDO PROJETOS ATUALIZADOS PARA O SERVIDOR
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.send_edit_project);
	
	//chamar: scr_add_value_to_project() ao final para atualizar os valores
	//talvez atualizar a var card_list_size
}