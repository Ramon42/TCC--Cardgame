// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_decode_project_list(_project_list){ //arrumar todo esse método, chamar ele toda hora vai criar um cacete
										//de instancia repetida
	var _array = json_parse(_project_list);
	var _aux_p = array_length(con_client.player.player_projects);
	var _aux_o = 0;
	
	/*
	for (var row = array_length(_array)-1; row >= 0; row--){
		for (var i = 0; i < array_length(con_client.project_list); i++){
				if (_array[row, 1] == con_client.project_list[i, 1]){
					array_delete(_array, row, 1);
					break;
				}
		}
	}
	*/
	
	for (var i = 0; i < array_length(con_client.project_list); i ++){
		for (var o = 0; o < array_length(_array); o++){
			if (_array[o, 2].player_socket != con_client.server_socket) { _aux_o ++; }
			if (_array[o, 2].project_id == con_client.project_list[i, 2].project_id){
				array_delete(_array, o, 1);
				break;
			}
		}
	}
		
	for (var i = 0; i < array_length(_array); i++){
		show_message("CRIANDO PROJETO");
		var _inst = instance_create_depth(0, 0,  -1, obj_projeto);
		var _load = _array[i, 2];
		if (_array[i, 0] == con_client.server_socket){
			if (_aux_p mod 2 == 0){
				_inst.x = 500;
				_inst.y = ((100*(_aux_p div 2))+800);
			}
			else {
				_inst.x = 700;
				_inst.y = ((100*((_aux_p-1) div 2))+800);
			}
		}
		else{
			if (_aux_o mod 2 == 0) {
				_inst.x = 500;
				_inst.y = ((100*(_aux_o div 2))+300);
			}
			else {
				_inst.x = 700;
				_inst.y = ((100*((_aux_o-1) div 2))+300);
			}
		}
		with (_inst){
			image_xscale = 0.5;
			image_yscale = 0.5;
			sprite_list = _load.sprite_list;
			player_socket = _load.player_socket;
			project_id = _load.project_id;
			forca_var = _load.forca_var;
			forca_cons = _load.forca_cons;
			escudo_var = _load.escudo_var;
			escudo_cons = _load.escudo_cons;
			energia = _load.energia;
			attributes_map = _load.attributes_map;
			voo = _load.voo;
			atacar_1 = _load.atacar_1;
			atacar_2 = _load.atacar_2;
			refletir = _load.refletir;
			defender = _load.defender;
			voar = _load.voar;
		}
		var _size = array_length(con_client.project_list);
		
		con_client.project_list[_size, 0] = _array[i, 0]; //sock do dono do projeto
		con_client.project_list[_size, 1] = _array[i, 1]; //id projeto
		con_client.project_list[_size, 2] = _inst;
	
		if (con_client.server_socket == _array[i, 0]){
			array_push(con_client.player.player_projects, _inst);
		}
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
			attributes_map = _load.attributes_map;
			voo = _load.voo;
		}
		ds_list_add(con_client.project_list, _inst);
	}
	*/
}