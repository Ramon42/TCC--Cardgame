// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_class(_sock, _sock_op = undefined){
	if (_sock > 1){
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, network.update_class);
		var _data_projects = json_stringify(classes_server);
		buffer_write(buffer, buffer_string, _data_projects);
		network_send_packet(_sock, buffer, buffer_tell(buffer));
		if (_sock_op != undefined){
			network_send_packet(_sock_op, buffer, buffer_tell(buffer));
		}
	}
}