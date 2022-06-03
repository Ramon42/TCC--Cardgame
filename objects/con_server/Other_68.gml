/// @description Insert description here
// You can write your code in this editor

var _event_id = async_load[? "id"];

if (server == _event_id) {
	var _type = async_load[? "type"];
	var _sock = async_load[? "socket"]; //_sock == socket do ultimo conectado
	
	if (_type == network_type_connect){
		ds_list_add(sockets, _sock);
		var _p = instance_create_layer(0, 0, "Instances", obj_player_base);
		
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
	
	buffer_seek(_buff, buffer_seek_start, 0);
	var _msgid = buffer_read(_buff, buffer_u8);
	
	if (_msgid == 55){
		show_message("MENSAGEM RECEBIDA DE: " + string(_sock));
	}
	
	var _p = clients[? _sock];
	switch (_msgid){
		
		//só deve rodar após os dois clientes estarem conectados
		case network.update: //enviar oponente 0 para 1 e oponente 1 para 0
			scr_update(_sock, _p);
			scr_update_projects(_sock);
			break;
			
			
		case network.draw_card:
			var _num = buffer_read(_buff, buffer_u8);
			scr_draw_card_server(_sock, _num, _p);
			break;
			
		case network.create_project:
			var _project = json_parse(buffer_read(_buff, buffer_string));
			scr_create_project(_project, _sock);
			break;
			
		case network.send_edit_project:
			var _att_project = json_parse(buffer_read(_buff, buffer_string));
			show_message("PROJETO ATUALIZADO RECEBIDO> " + string(_att_project));
			scr_edit_project(_att_project, _sock);
			break;

	}
}