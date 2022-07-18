// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_player_turn(_sock){
	for (var i = 0; i < array_length(con_server.classes_server); i++){ //atualiza a contagem de recarga das armas
		if (con_server.classes_server[i, 2].recarregar_count < con_server.classes_server[i, 2].recarregar){
			con_server.classes_server[i, 2].recarregar_count++;
		}
	}
	buffer_seek(con_server.buffer, buffer_seek_start, 0);
	buffer_write(con_server.buffer, buffer_u8, network.start_turn); //envia essa resposta para o primeiro jogador
	buffer_write(con_server.buffer, buffer_u8, con_server.turn_player);
	network_send_packet(_sock, buffer, buffer_tell(buffer));
	network_send_packet(con_server.turn_player, buffer, buffer_tell(buffer));
}