/// @description Insert description here
// You can write your code in this editor

if (ds_list_size(self.sockets) == 2){
	//self.first_player = irandom_range(0, 1);
	var _scnd = 0;
	//var _sock = self.sockets[|self.first_player]; //jogador 1
	var _sock = self.sockets[|0] //SÓ PRA TESTES, O PRIMEIRO A SE CONECTAR SEMPRE COMEÇA
	show_message("INDO PRIMEIRO JOGADOR> " + string(self.first_player));
	self.turn_player = _sock;
	if (self.first_player == 0){ _scnd = 1; }
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.start_player); //envia essa resposta para o primeiro jogador
	self.turn_count++;
	network_send_packet(_sock, buffer, buffer_tell(buffer));

	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.second_player);
	network_send_packet(self.sockets[|_scnd], buffer, buffer_tell(buffer));
}
