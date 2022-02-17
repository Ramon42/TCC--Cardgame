// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update(_sock, _p){ //envia todos os updates GERAIS (ex, tamanho do deck, campo) para os jogadores
	var _socs = ds_list_size(sockets);
	if (_socs > 1){
		
		var _op = scr_find_op(_p);
		
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, network.update);
		//cartas no deck
		buffer_write(buffer, buffer_u8, deck_server.deck_size);
		//cartas na mão do oponente
		buffer_write(buffer, buffer_u8, _op.hand_size);

		network_send_packet(_sock, buffer, buffer_tell(buffer));
	}
}