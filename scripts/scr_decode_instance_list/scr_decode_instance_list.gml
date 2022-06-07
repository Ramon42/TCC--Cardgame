// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_decode_instance_list(_instance_list){
	var _array = json_parse(_instance_list);
	/*
	for (var row = array_length(_array)-1; row >= 0; row--){
		for (var i = 0; i < array_length(con_client.instance_list); i++){
			if (_array[row, 1] == con_client.instance_list[i, 1]){
				show_debug_message("DELETOU SOCK> " + string(_array[row,0]) + " ID> " +string(_array[row,1]) + " INSTANCIA> " +string(_array[row,2]) + " DA LISTA DECODE");
				array_delete(_array, row, 1);
				break;
			}
		}
	}
	*/
	for (var i = 0; i < array_length(con_client.instance_list); i++){
		for (var o = 0; o < array_length(_array); o++){
			if (_array[o, 2].inst_id == con_client.instance_list[i, 2].inst_id){
				// and _array[o, 0] == con_client.server_socket NÃO FUNCIONA PQ O SERVER SOCKET É DIFERENTE PRA CADA USUÁRIO
				array_delete(_array, o, 1);
				break;
			}
		}
	}
	
	for (var i = 0; i < array_length(_array); i++){
		show_message("CRIANDO PROJETO");
		var _inst = instance_create_depth(0, 0,  -1, obj_robo);
		var _load = _array[i, 2];
		with(_inst){
			inst_proj_id = _load.inst_proj_id;
			inst_sock_id = _load.inst_sock_id;
			inst_id = _load.inst_id;
			forca_var = _load.forca_var;
			forca_cons = _load.forca_cons;
			escudo_var = _load.escudo_var;
			escudo_cons = _load.escudo_cons;
			energia_var = _load.energia_var;
			energia_cons = _load.energia_cons;
			voo = _load.voo;
		}
		var _size = array_length(con_client.instance_list);
		
		con_client.instance_list[_size, 0] = _array[i, 0]; //sock do dono do projeto
		con_client.instance_list[_size, 1] = _array[i, 1]; //id projeto
		con_client.instance_list[_size, 2] = _inst;
	}
}