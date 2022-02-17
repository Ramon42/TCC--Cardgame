// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_player(_sock, _id){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.entity);
	buffer_write(buffer, buffer_u16, _id);
	network_send_packet(_sock, buffer, buffer_tell(buffer));
}