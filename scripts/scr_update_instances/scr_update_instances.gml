// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_instances(_sock){
	if (_sock > 1){
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, network.update_instances);
		var _data_instances = json_stringify(instances_server);
		buffer_write(buffer, buffer_string, _data_instances);
		network_send_packet(_sock, buffer, buffer_tell(buffer));
	}
}