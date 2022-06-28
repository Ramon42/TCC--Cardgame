// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_att_recarga(_class){
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.create_class);
	//enviando todas as variaveis do projeto
	var _save_project = {
		sprite : _class.sprite,
		player_socket : con_client.server_socket,
		class_id : _class.class_id,
		dano : _class.dano,
		recarregar : _class.recarregar,
		recarregar_count : _class.recarregar_count
	}

	var _data = json_stringify(_save_project);
	buffer_write(con_client.buffer, buffer_string, _data);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}