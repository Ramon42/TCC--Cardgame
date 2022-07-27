/// @description Insert description here
// You can write your code in this editor

var _event_id = async_load[? "id"];

if (socket == _event_id){
	var _buff = async_load[?"buffer"];
	buffer_seek(_buff, buffer_seek_start, 0);
	var _msgid = buffer_read(_buff, buffer_u8);
	
	switch(_msgid){
		
		//NOVO
		case network.init: //ordem= deck, player, oponente, server_socket
			deck = instance_create_layer(0, 0, "Instances", obj_deck);
			player = instance_create_layer(0, 0, "Instances", obj_player);
			opponent = instance_create_layer(0, 0, "Instances", obj_opponent); //fazer isso em create_opponent
			deck.deck_size = buffer_read(_buff, buffer_u8);
			server_socket = buffer_read(_buff, buffer_u8);
			player.vida_atual = 20;
			//scr_draw_card_client(7); //esse draw ta dando problema no segundo jogador conectado
		break;
			
		case network.start_player:
			self.player.state = PLAYERSTATE.DRAW_PHASE;
			scr_draw_card_client(7);
		break;
		
		case network.second_player:
			self.player.state = PLAYERSTATE.ENEMY_TURN;
			//scr_draw_card_client(7);
		break;
		
		case network.update: // retorna= deck size, cartas na mão do oponente
			deck.deck_size = buffer_read(_buff, buffer_u8);
			opponent.hand_size_op = buffer_read(_buff, buffer_u8);
			opponent.vida_atual = buffer_read(_buff, buffer_u8);
			player.vida_atual = buffer_read(_buff, buffer_u8);
			scr_show_hand();
			scr_endgame();
			//for (var i = 0; i < opponent.hand_size)
		break;
		
		case network.update_projects:
			//projetos recebidos em json:
			var _project_list = buffer_read(_buff, buffer_string);
			scr_att_client_project_list(_project_list, self.project_list);
			scr_decode_project_list(_project_list);
			scr_set_player_projects(self.project_list);
			scr_check_instance_project();
		break;
			
		case network.update_class:
			var _class_list = buffer_read(_buff, buffer_string);
			scr_decode_class_list(_class_list);
		break;
		
		case network.update_instances:
			var _instance_list = buffer_read(_buff, buffer_string);
			scr_decode_instance_list(_instance_list);
			//scr_set_instances_position(self.instance_list);
		break;
		
		case network.draw_card:
			var _card = instance_create_layer(0, 0, "Instances", obj_card);
			var _card_sprite = buffer_read(_buff, buffer_u8);
			_card.sprite_index = scr_atribuir_sprite(_card_sprite);
			scr_assign_stats(_card);
			ds_list_add(player.hand, _card);
			scr_show_hand();
		break;
			
		case network.def_menu: //cria um menu para o jogador defensor decidir se vai usar 
		// o metodo defender()
			var _atk_id = buffer_read(_buff, buffer_u32);
			var _def_id = buffer_read(_buff, buffer_u32);
			var _dmg = buffer_read(_buff, buffer_u8);
			scr_menu_defender(_atk_id, _def_id, _dmg);
		break;
		
		case network.atk_animation:
			var _atk_id = buffer_read(_buff, buffer_u32);
			var _def_id = buffer_read(_buff, buffer_u32);
			scr_atk_animation(_atk_id, _def_id);
		break;
			
		case network.atk_instance:
			var _instance_list = buffer_read(_buff, buffer_string);
			scr_att_client_instances(_instance_list);
		break;
		
		case network.explode:
			var _obj1_id = buffer_read(_buff, buffer_u32);
			var _obj2_id = buffer_read(_buff, buffer_u32);
			scr_explode(_obj1_id, _obj2_id);
		break;
			
		case network.invert:
			var _obj_id = buffer_read(_buff, buffer_u32);
			var _update = buffer_read(_buff, buffer_string);
			scr_inverter(_obj_id, _update);
		break;
			
		case network.wait:
			self.player.state = PLAYERSTATE.ENEMY_TURN;
		break;
		
		case network.start_turn:
			var _turn_player = buffer_read(_buff, buffer_u8);
			show_debug_message("_TURN_PLAYER> " + string(_turn_player));
			show_debug_message("SELF.SOCKET> " + string(self.socket));
			if (_turn_player == self.server_socket){
				//show_message("STARTANDO TURNO");
				con_client.player.state = PLAYERSTATE.DRAW_PHASE;
			}
		break;
		//FIM DO NOVO
			
		
		case 42:
			//show_message("RETORNO SOCKET" + string(self.socket));
			buffer_seek(buffer, buffer_seek_start, 0);
			buffer_write(buffer, buffer_u8, 55);
			network_send_packet(global.socket, buffer, buffer_tell(buffer));
			break;
			


		
		
	}

}
/*
var _event_id = async_load[? "id"];

if (socket == _event_id){
	var _buff = async_load[?"buffer"];
	buffer_seek(_buff, buffer_seek_start, 0);
	var _msgid = buffer_read(_buff, buffer_u8);
	switch(_msgid){
		
		case network.entity:
			var _cmd = buffer_read(buffer, buffer_u8);
			var _id = buffer_read(buffer, buffer_u16);
			
			if (!ds_map_exists(entities, _id)){
				var _p = instance_create_layer(0, 0, "Instances", obj_remote_entity);
				ds_map_set(entities, _id, _p);
			}
			
			var _p = entities[? _id];
			
			switch (_cmd){
				case network.get_draw_card:
					var _card = buffer_read(buffer, buffer_u8);
					_card = scr_atribuir_sprite(_card);
					ds_list_add(_p.hand, _card);
					break;
			}
			break;
		
		case network.create_deck:
			deck.deck_size = buffer_read(_buff, buffer_u8);
			break;
			
		case network.draw_card: //precisa receber id (igual ao criar player,
			
	}
}
*/