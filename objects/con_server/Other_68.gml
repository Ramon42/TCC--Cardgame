/// @description Insert description here
// You can write your code in this editor

var _event_id = async_load[? "id"];

if (server == _event_id) {
	var _type = async_load[? "type"];
	var _sock = async_load[? "socket"]; //_sock == socket do ultimo conectado
	
	if (_type == network_type_connect){
		ds_list_add(sockets, _sock);
		var _p = instance_create_layer(0, 0, "Instances", obj_player_base);
		_p.vida_atual = 20;
		scr_send_init(_sock);
		//colocar tudo isso no send init
		//scr_send_opponent(_sock, _p.id, _p.hand_size); //arrumar isso (10/10)
		//scr_send_deck(_sock);
		//
		
		ds_map_add(clients, _sock, _p); //_sock = key
		self.alarm[0] = 30;
		
		
		for (var i = 0; i < ds_map_size(sockets); i ++){
			show_debug_message("VALOR SOCKET: " + string(sockets[|i])); //retorna todos os sockets conectados
			show_debug_message("VALOR CLIENTS: " + string(clients[? sockets[|i]])); //retorna ID da instancia
			show_debug_message("VALOR _sock: " + string(_sock));
		}
		
		//teste enviar mensagem SÓ para quem se conecta
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, 42);
		network_send_packet(_sock, buffer, buffer_tell(buffer)); //envia pro ultimo conectado
		
		//dados de outros jogadores / deck// mudar para enviar só um objeto oponente
		/*
		for (var i = 0; i < instance_number(obj_player); i++){
			var _player = instance_find(obj_player, i);
			scr_create_player(_sock, _player.id);
			//scr_send_remote_entity(_sock, CMD_CREATE, _player.id, 0);
		}
		*/
		//enviar oponente
		
		
		//enviar para posição 0 da lista de socket (envia pro primeiro cliente conectado, logo, o que criou o servidor???)
		//enviando deck
		
	}
	
	if (_type == network_type_disconnect){
		var _p = clients[? _sock]; //isso retorna o obj salvo de acordo com a key _sock
		show_debug_message("CLIENT DESCONECTADO: " + string(clients[? _sock]));
		if (instance_exists(_p)){
			with(_p){ instance_destroy(); }
		}
		ds_list_delete(sockets, ds_list_find_index(sockets, _sock));
		ds_map_delete(clients, _sock);
	}
}
else if (_event_id != global.socket){ //recebendo data de outro client
	var _sock = async_load[? "id"];
	var _buff = async_load[? "buffer"];
	var _sock_op;
	if (self.sockets[|0] == _sock) { _sock_op = self.sockets[|1]; }
	else { _sock_op = self.sockets[|0]; }
	
	
	buffer_seek(_buff, buffer_seek_start, 0);
	var _msgid = buffer_read(_buff, buffer_u8);
	
	if (_msgid == 55){
		show_message("MENSAGEM RECEBIDA DE: " + string(_sock));
	}
	
	var _p = clients[? _sock];
	
	if (keyboard_check_released(vk_f5)){
		if (self.turn_count mod 2 == 0){ //jogador par
			self.turn_player = 0;
			scr_change_player_turn(_sock);
		}
		else {
			self.turn_player = 1;
			scr_change_player_turn(_sock);
		}
	}
	
	switch (_msgid){
		
		case network.call_update:
			scr_update_projects(_sock, _sock_op);
			scr_update_instances(_sock, _sock_op);
			scr_update_class(_sock, _sock_op);
			break;
		
		//só deve rodar após os dois clientes estarem conectados
		case network.update: //enviar oponente 0 para 1 e oponente 1 para 0
			scr_update(_sock, _p);
			_p.hand_size = buffer_read(_buff, buffer_u8);
			//_p.vida_atual = buffer_read(_buff, buffer_u8);
			/*
			scr_update_projects(_sock);
			scr_update_instances(_sock);
			scr_update_class(_sock);
			*/
			break;
			
		case network.voar:
			var _inst_id = buffer_read(_buff, buffer_u32);
			var _voo = buffer_read(_buff, buffer_bool);
			scr_voar_servidor(_inst_id, _voo, _sock, _sock_op);
			break;
			
		case network.draw_card:
			var _num = buffer_read(_buff, buffer_u8);
			scr_draw_card_server(_sock, _num, _p);
			break;
			
		case network.create_project:
			var _project = json_parse(buffer_read(_buff, buffer_string));
			scr_create_project(_project, _sock);
			break;
			
		case network.create_class:
			var _class = json_parse(buffer_read(_buff, buffer_string));
			scr_create_class(_class, _sock);
			break;
			
		case network.create_instance:
			var _instance = json_parse(buffer_read(_buff, buffer_string));
			scr_create_instance(_instance, _sock);
			scr_update_instances(_sock);
			break;
		
		case network.send_edit_project:
			var _att_project = json_parse(buffer_read(_buff, buffer_string));
			show_message("PROJETO ATUALIZADO RECEBIDO> " + string(_att_project));
			scr_edit_project(_att_project, _sock);
			break;
			
		case network.heranca:
			var _projeto = json_parse(buffer_read(_buff, buffer_string));
			var _id = buffer_read(_buff, buffer_u32);
			show_message("ID SERVIDOR> " + string(_id));
			scr_send_heranca_servidor(_projeto, _id, _sock);
		break;
		
		case network.wait:
			
		break;
		
		case network.atk_instance:
			var _atk_id = buffer_read(_buff, buffer_u32);
			var _def_id = buffer_read(_buff, buffer_u32);
			var _dmg = buffer_read(_buff, buffer_u8);
			aux_atk = _atk_id;
			aux_def1 = _def_id;
			aux_sock = _sock_op;
			//alarm[1] = 0;
			scr_send_atk_animation(_sock_op, _atk_id, _def_id);
			scr_send_def_choice(_sock_op, _atk_id, _def_id, _dmg);
			
			//criar um spript pra abrir um menu perguntando se o jogador deseja utilizar o metodo
			//defender
			//anotação futura: provavelmente quando um robo for destruido aqui, tem que
			//diminuir 1 do lugar que posiciona eles no cliente
			
		break;
		
		case network.atk_instance2:
			var _atk_id = buffer_read(_buff, buffer_u32);
			var _def1_id = buffer_read(_buff, buffer_u32);
			var _def2_id = buffer_read(_buff, buffer_u32);
			var _dmg = buffer_read(_buff, buffer_u8);
			var _atk_forca = buffer_read(_buff, buffer_u8);
			aux_atk = _atk_id;
			aux_def1 = _def1_id;
			aux_sock = _sock_op;
			alarm[1] = 0;
			//scr_send_atk_animation(_sock_op, _atk_id, _def_id);
			scr_send_def_choice(_sock_op, _atk_id, _def1_id, _dmg);
			aux_def1 = _def2_id;
			alarm[2] = 60;
			//scr_send_atk_animation(_sock_op, _atk_id, _def_id);
			scr_send_def_choice(_sock_op, _atk_id, _def2_id, (_atk_forca - _dmg));
		break;
		
		case network.instance_dmg_calc:
			var _atk_id = buffer_read(_buff, buffer_u32);
			var _def_id = buffer_read(_buff, buffer_u32);
			var _dmg = buffer_read(_buff, buffer_u8);
			var _bloq = buffer_read(_buff, buffer_bool);
			scr_calculate_dmg(_atk_id, _def_id, _sock, _sock_op, _bloq, _dmg);
		break;
			
		case network.deal_damage:
			var _atk_id = buffer_read(_buff, buffer_u32);
			var _dmg = buffer_read(_buff, buffer_u8);
			var _op = scr_find_op(_p);
			_op.vida_atual -= _dmg;
		break;
		
		case network.explode:
			var _obj1_id = buffer_read(_buff, buffer_u32);
			var _obj2_id = buffer_read(_buff, buffer_u32);
			scr_explode_server(_obj1_id, _obj2_id, _sock, _sock_op);
		break;
		
		case network.invert:
			var _obj_id = buffer_read(_buff, buffer_u32);
			var _var1 = buffer_read(_buff,buffer_u8);
			var _var2 = buffer_read(_buff, buffer_u8);
			scr_inverter_server(_obj_id, _var1, _var2, _sock, _sock_op);
		break;
		
		case network.increment:
			var _proj_id = buffer_read(_buff, buffer_u32);
			var _var_sub = buffer_read(_buff, buffer_u8);
			var _incr_sub = buffer_read(_buff, buffer_u8);
			scr_incremento_server(_proj_id, _var_sub, _incr_sub, _sock, _sock_op);
		break;
		
		case network.pass_turn:
			if (self.turn_player == self.sockets[|0]){ self.turn_player = self.sockets[|1]; }
			else{ self.turn_player = self.sockets[|0]; }
			self.turn_count ++;
			scr_change_player_turn(_sock);
			
		break;

	}
}