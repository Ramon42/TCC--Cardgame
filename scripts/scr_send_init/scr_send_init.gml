// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_init(_sock){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.init);
	buffer_write(buffer, buffer_u8, deck_server.deck_size);
	buffer_write(buffer, buffer_u8, _sock);
	network_send_packet(_sock, buffer, buffer_tell(buffer));
}