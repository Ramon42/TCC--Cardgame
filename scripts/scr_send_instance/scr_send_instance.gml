// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_instance(_project){
	for (var i = 0; i < ds_list_size(con_client.player.hand); i++){
		if (con_client.player.hand[|i].card_subtype == SUBTYPE.ROBO){
			instance_destroy(con_client.player.hand[|i]);
			ds_list_delete(con_client.player.hand, i); //deleta carta da mão do jogador
			scr_show_hand();
			break;
		}
	}
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.create_instance);
	var _save_instance = {
		inst_proj_id : _project.project_id,
		inst_sock_id : _project.player_socket,
		inst_id : 0,
		
		forca_var : _project.forca_var,
		forca_cons :  _project.forca_cons,

		escudo_var :  _project.escudo_var,
		escudo_cons :  _project.escudo_cons,

		energia :  _project.energia,

		voo : _project.voo,
		
		atacar_1 : _project.atacar_1,
		atacar_2 : _project.atacar_2,
		voar : _project.voar,
		refletir : _project.refletir,
		defender : _project.defender
	}
	
	var _data = json_stringify(_save_instance);
	buffer_write(con_client.buffer, buffer_string, _data);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}