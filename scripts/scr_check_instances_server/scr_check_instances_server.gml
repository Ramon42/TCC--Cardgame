// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_instances_server(){
	if (array_length(con_server.instances_server) > 0){
		var _del = array_create(0);
		for (var o = 0; o < array_length(con_server.instances_server); o++){
			var _find = false;
			for (var i = 0; i < array_length(con_server.projects_server); i++){
				if (con_server.projects_server[i, 1] == con_server.instances_server[o, 2].inst_proj_id){
					_find = true;
					break;
				}
			}
			if (!_find){
				array_push(_del, o);
			}
		}
		for (var r = array_length(_del)-1; r >= 0; r--){
			array_delete(con_server.instances_server, _del[r], 1);
		}
	}
}