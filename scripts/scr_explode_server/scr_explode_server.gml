// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_explode_server(_obj1_id, _obj2_id, _sock, _sock_op){
	for (var i = 0; i < array_length(con_server.instances_server); i++){
		if (con_server.instances_server[i, 2].inst_id == _obj1_id){
			array_delete(con_server.instances_server, i, 1);
		}
		if (con_server.instances_server[i, 2].inst_id == _obj2_id){
			array_delete(con_server.instances_server, i, 1);
		}
	}
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.explode);
	buffer_write(buffer, buffer_u32, _obj1_id);
	buffer_write(buffer, buffer_u32, _obj2_id);
	network_send_packet(_sock, buffer, buffer_tell(buffer));
	network_send_packet(_sock_op, buffer, buffer_tell(buffer));
}