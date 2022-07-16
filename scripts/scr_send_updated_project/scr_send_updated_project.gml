// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_updated_project(_projeto1, _projeto2 = undefined, _card){ //_projeto1 = projeto da onde a carta saiu
																//_projeto2 = pra onde ela foi
	var aux_del = noone;
	var _move = true;
	show_debug_message("CARTAS CADASTRADAS>> ");

	if (_projeto2 != undefined){
		for (var i = 0; i < array_length(_projeto2.sprite_list); i++){
			if(_card.sprite_index == _projeto2.sprite_list){
				show_message("NÃO É POSSÍVEL ADICIONAR ESTA CARTA AO PROJETO POIS ELE JÁ POSSUI UMA SEMELHANTE!");
				_move = false;
				break;
			}
		}
	}
	if (_move){
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
					voo : _projeto1.voo,
					atacar_1 : _projeto1.atacar_1,
					atacar_2 : _projeto1.atacar_2,
					refletir : _projeto1.refletir,
					defender : _projeto1.defender,
					inverter : _projeto1.inverter,
					explodir : _projeto1.explodir,
					agrupar_atacar : _projeto1.agrupar_atacar,
					destruir_arma : _projeto1.destruir_arma,
					usar_arma : _projeto1.usar_arma,
					voar : _projeto1.voar
				}
				var _data = json_stringify(_save_project);
				buffer_write(con_client.buffer, buffer_string, _data);
				network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
				//instance_destroy(_projeto1);
			
				//
				obj_edit_project_menu.card_list[|i].x = -700;
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
			ds_list_add(_projeto2.cards_in_project, _card); //original é ds_list_add(_projeto2.cards_in_project, _card);
			array_push(_projeto2.sprite_list, _card.sprite_index);
			show_message("CARTA ENVIADA PARA O NOVO PROJETO");
			scr_add_value_to_project_new(_projeto2.cards_in_project, _projeto2);
			//enviando atualização do projeto que recebeu a carta
			buffer_seek(con_client.buffer, buffer_seek_start, 0);
			buffer_write(con_client.buffer, buffer_u8, network.send_edit_project);
			var _save_project = {
					sprite_list : _projeto2.sprite_list,
					player_socket : con_client.server_socket,
					project_id : _projeto2.project_id,
					forca_var : _projeto2.forca_var,
					forca_cons : _projeto2.forca_cons,
					escudo_var : _projeto2.escudo_var,
					escudo_cons : _projeto2.escudo_cons,
					energia : _projeto2.energia,
					voo : _projeto2.voo,
					atacar_1 : _projeto2.atacar_1,
					atacar_2 : _projeto2.atacar_2,
					refletir : _projeto2.refletir,
					defender : _projeto2.defender,
					explodir : _projeto2.explodir,
					inverter : _projeto2.inverter,
					agrupar_atacar : _projeto2.agrupar_atacar,
					destruir_arma : _projeto2.destruir_arma,
					usar_arma : _projeto2.usar_arma,
					voar : _projeto2.voar
			}
			var _data = json_stringify(_save_project);
			buffer_write(con_client.buffer, buffer_string, _data);
			network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
			//instance_destroy(_projeto2);
		}
	
	//chamar: scr_add_value_to_project() ao final para atualizar os valores
	//talvez atualizar a var card_list_size
	}
}