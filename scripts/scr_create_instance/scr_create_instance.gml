// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_instance(_instance, _sock){
	var _size = array_length(instances_server);
	//_instance.inst_id = array_length(con_server.instances_server);
	if (_size == 0){
		_instance.inst_id = 0;
	}
	else {
		_instance.inst_id = con_server.instances_server[_size - 1, 2].inst_id + 1;
	}
	instances_server[_size, 0] = _sock;
	instances_server[_size, 1] = _instance.inst_proj_id;
	instances_server[_size, 2] = _instance;
	
	scr_update_instances(_sock);
}