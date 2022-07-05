// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_voar(_id, _bool){
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.voar);
	buffer_write(con_client.buffer, buffer_u32, _id); //inst_id do atacante
	buffer_write(con_client.buffer, buffer_bool, _bool);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}