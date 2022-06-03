// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_client(){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.update);
	if (instance_exists(con_client.player)){
		buffer_write(buffer, buffer_u8, con_client.player.hand_size); 
		buffer_write(buffer, buffer_u8, con_client.player.vida_atual);
	}
	else{ 
		buffer_write(buffer, buffer_u8, 0);
		buffer_write(buffer, buffer_u8, 0);
	}
	network_send_packet(socket, buffer, buffer_tell(buffer));
}