// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_voar_servidor(_inst_id, _voo, _sock, _sock_op){
	for (var i = 0; i < array_length(con_server.instances_server); i++){
		if (con_server.instances_server[i, 2].inst_id == _inst_id){
			con_server.instances_server[i, 2].voo = _voo;
		}
	}
	scr_update_instances(_sock, _sock_op);
}