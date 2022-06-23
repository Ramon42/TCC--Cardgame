// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_decode_project_list(_project_list){ //arrumar todo esse método, chamar ele toda hora vai criar um cacete
										//de instancia repetida
	var _array = json_parse(_project_list);
	var _aux_p = 0;
	var _aux_o = 0;
	var _aux_sup_p = 0;
	var _aux_sup_o = 0;
	
	for (var i = 0; i < array_length(con_client.project_list); i ++){
		for (var o = 0; o < array_length(_array); o++){
			if (_array[o, 2].player_socket != con_client.server_socket) { 
				if (con_client.project_list[i, 2].abstract){
					_aux_sup_p++;
				}
				else { _aux_o ++; }
			}
			else { 
				if (con_client.project_list[i, 2].abstract){
					_aux_sup_o++;
				}
				else { _aux_p++; }
			}
			if (_array[o, 2].project_id == con_client.project_list[i, 2].project_id){
				array_delete(_array, o, 1);
				break;
			}
		}
	}
		
	for (var i = 0; i < array_length(_array); i++){
		var _inst = instance_create_depth(0, 0,  -1, obj_projeto);
		var _load = _array[i, 2];
		if (!_load.abstract){
			if (_array[i, 0] == con_client.server_socket){
				_inst.x = con_client.player.p_projects_pos[_aux_p, 0];
				_inst.y = con_client.player.p_projects_pos[_aux_p, 1];
			
			}
			else{
				_inst.x = con_client.player.op_projects_pos[_aux_o, 0];
				_inst.y = con_client.player.op_projects_pos[_aux_o, 1];
			}
		}
		else{ //lista de cartas abstratas fica separada
			if (_array[i, 0] == con_client.server_socket){
				_inst.x = con_client.player.p_projects_pos[_aux_sup_p, 0];
				_inst.y = con_client.player.p_projects_pos[_aux_sup_p, 1];
			
			}
			else{
				_inst.x = con_client.player.op_projects_pos[_aux_sup_o, 0];
				_inst.y = con_client.player.op_projects_pos[_aux_sup_o, 1];
			}
		}
		with (_inst){
			image_xscale = 0.5;
			image_yscale = 0.5;
			sprite_list = _load.sprite_list;
			player_socket = _load.player_socket;
			project_id = _load.project_id;
			final = _load.final;
		    abstract = _load.abstract;
			forca_var = _load.forca_var;
			forca_cons = _load.forca_cons;
			escudo_var = _load.escudo_var;
			escudo_cons = _load.escudo_cons;
			energia = _load.energia;
			voo = _load.voo;
			atacar_1 = _load.atacar_1;
			atacar_2 = _load.atacar_2;
			refletir = _load.refletir;
			defender = _load.defender;
			explodir = _load.explodir;
			inverter = _load.inverter;
			agrupar_atacar = _load.agrupar_atacar;
			destruir_arma = _load.destruir_arma;
			usar_arma = _load.usar_arma;
			voar = _load.voar;
		}
		var _size = array_length(con_client.project_list);
		
		con_client.project_list[_size, 0] = _array[i, 0]; //sock do dono do projeto
		con_client.project_list[_size, 1] = _array[i, 1]; //id projeto
		con_client.project_list[_size, 2] = _inst;
	}
	
		/*
		for (var i = array_height_2d(_array) - 1; i > -1; i--;)
		{
			for (var j = array_length_2d(_array, i) - 1; j > -1; j--;)
			{
				show_debug_message("ARRAY>>>> " + string(_array[i, j]));
			}
		}
		*/
	/*
	while (array_length(_array) > 0){
		var _load = array_pop(_array);
		var _inst = instance_create_layer(600, 600,  "Instances", obj_projeto);
		with (_inst){
			obj_list = _load.obj_list;
			image_xscale = _load.image_xscale;
			image_yscale = _load.image_yscale;
			creating_project = _load.creating_project;
			player_socket = _load.player_socket;
			forca_var = _load.forca_var;
			forca_cons = _load.forca_cons;
			escudo_var = _load.escudo_var;
			escudo_cons = _load.escudo_cons;
			energia = _load.energia;
			voo = _load.voo;
		}
		ds_list_add(con_client.project_list, _inst);
	}
	*/
}