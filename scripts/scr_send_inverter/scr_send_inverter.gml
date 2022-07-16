// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_inverter(_objeto, _card_subtype1, _card_subtype2){
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.invert);
	buffer_write(con_client.buffer, buffer_u32, _objeto.inst_id);
	buffer_write(con_client.buffer, buffer_u8, _card_subtype1);
	buffer_write(con_client.buffer, buffer_u8, _card_subtype2);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}