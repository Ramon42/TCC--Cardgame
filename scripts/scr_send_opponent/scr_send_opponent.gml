// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_opponent(_sock, _id, _hand_size){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.create_opponent);
	buffer_write(buffer, buffer_u16, _id);
	buffer_write(buffer, buffer_u8, _hand_size);
	network_send_packet(_sock, buffer, buffer_tell(buffer));
}