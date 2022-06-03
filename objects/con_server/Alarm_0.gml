/// @description Insert description here
// You can write your code in this editor
buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, network.update);
		//cartas no deck
		buffer_write(buffer, buffer_u8, deck_server.deck_size);
		//cartas na mão do oponente
		buffer_write(buffer, buffer_u8, _op.hand_size);

		network_send_packet(_sock, buffer, buffer_tell(buffer));
		
		
if (ds_list_size(self.sockets) == 2){
	var _rand = irandom_range(0, 1);
	self.sockets[_rand]; //jogador 1
}
