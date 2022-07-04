// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_instances_server(){
	if (array_length(con_server.instances_server) > 0){
		for (var o = 0; o < array_length(con_server.instances_server); o++){
			var _find = false;
			for (var i = 0; i < array_length(con_server.projects_server); i++){
				if (con_server.projects_server[i, 1] == con_server.instances_server[o, 2].inst_proj_id){
					_find = true;
					break;
				}
			}
			if (!_find){
				show_message("PROJETO NÃO ENCONTRADO, DELETANDO DO SERVIDOR");
				array_delete(con_server.instances_server, o, 1);
			}
		}
	}
}