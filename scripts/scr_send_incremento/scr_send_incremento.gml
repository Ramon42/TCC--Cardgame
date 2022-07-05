// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_incremento(_obj_id, _var_subtype, _incremento_subtype){
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.increment);
	buffer_write(con_client.buffer, buffer_u32, _obj_id);
	buffer_write(con_client.buffer, buffer_u8, _var_subtype);
	buffer_write(con_client.buffer, buffer_u8, _incremento_subtype);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}