// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_card_client(_num){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.draw_card);
	buffer_write(buffer, buffer_u8, _num);
	network_send_packet(socket, buffer, buffer_tell(buffer));
}