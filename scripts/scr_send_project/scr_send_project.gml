// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_project(_projeto){
	show_debug_message("SCR_SEND_PROJECT ENTROU");
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.create_project);
	//enviando todas as variaveis do projeto
	var _save_project = {
		sprite_list : _projeto.sprite_list,
		player_socket : con_client.server_socket,
		project_id : _projeto.project_id,
		final : _projeto.final,
		abstract : _projeto.abstract,
		forca_var : _projeto.forca_var,
		forca_cons : _projeto.forca_cons,
		escudo_var : _projeto.escudo_var,
		escudo_cons : _projeto.escudo_cons,
		energia : _projeto.energia,
		voo : _projeto.voo,
		atacar_1 : _projeto.atacar_1,
		atacar_2 : _projeto.atacar_2,
		refletir : _projeto.refletir,
		defender : _projeto.defender,
		explodir : _projeto.explodir,
		inverter : _projeto.inverter,
		agrupar_atacar : _projeto.agrupar_atacar,
		destruir_arma : _projeto.destruir_arma,
		usar_arma : _projeto.usar_arma,
		voar : _projeto.voar
	}

	var _data = json_stringify(_save_project);
	buffer_write(con_client.buffer, buffer_string, _data);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}