/// @description Insert description here
// You can write your code in this editor

if (ds_list_size(self.sockets) == 2){
	var _rand = irandom_range(0, 1);
	var _scnd = 0;
	var _sock = self.sockets[_rand]; //jogador 1
	
	if (_rand == 0){ _scnd = 1; }
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.start_player); //envia essa resposta para o primeiro jogador
	network_send_packet(_sock, buffer, buffer_tell(buffer));
	
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.wait);
	network_send_packet(self.sockets[_scnd], buffer, buffer_tell(buffer));
}
