// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_project(_projeto){
	show_message("SCR_SEND_PROJECT ENTROU");
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.create_project);
	//enviando todas as variaveis do projeto
	var _save_project = {
		sprite_list : _projeto.sprite_list,
		image_xscale : _projeto.image_xscale,
		image_yscale : _projeto.image_yscale,
		player_socket : con_client.server_socket,
		project_id : _projeto.project_id,
		forca_var : _projeto.forca_var,
		forca_cons : _projeto.forca_cons,
		escudo_var : _projeto.escudo_var,
		escudo_cons : _projeto.escudo_cons,
		energia : _projeto.energia,
		attributes_map : _projeto.attributes_map,
		voo : _projeto.voo,
		atacar_1 : _projeto.atacar_1,
		atacar_2 : _projeto.atacar_2
	}

	var _data = json_stringify(_save_project);
	buffer_write(buffer, buffer_string, _data);
	network_send_packet(socket, buffer, buffer_tell(buffer));
}