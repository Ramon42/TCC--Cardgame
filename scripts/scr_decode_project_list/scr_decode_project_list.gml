// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_decode_project_list(_project_list){ //arrumar todo esse método, chamar ele toda hora vai criar um cacete
										//de instancia repetida
	var _array = json_parse(_project_list);
	show_debug_message("_ARRAY DE _PROJECT_LIST>>>> " + string(_project_list));
	for (var row = array_length(_array)-1; row >= 0; row--){
		for (var i = 0; i < array_length(con_client.project_list); i++){
				if (_array[row, 1] == con_client.project_list[i, 1]){
					show_debug_message("DELETOU SOCK> " + string(_array[row,0]) + " ID> " +string(_array[row,1]) + " PROJETO> " +string(_array[row,2]) + " DA LISTA DECODE");
					array_delete(_array, row, 1);
					break;
				}
		}
	}
	
	for (var row = 0; row < array_length(_array); row ++){
		show_message("CRIANDO INSTANCIA");
		_inst = instance_create_layer(0, 0,  "Projects", obj_projeto); //tirar essa instanciação daqui pq vai dar merda
		var _load = _array[row, 2];
		with (_inst){
			sprite_list = _load.sprite_list;
			image_xscale = _load.image_xscale;
			image_yscale = _load.image_yscale;
			player_socket = _load.player_socket;
			project_id = _load.project_id;
			forca_var = _load.forca_var;
			forca_cons = _load.forca_cons;
			escudo_var = _load.escudo_var;
			escudo_cons = _load.escudo_cons;
			energia_var = _load.energia_var;
			energia_cons = _load.energia_cons;
			attributes_map = _load.attributes_map;
			voo = _load.voo;
		}
		var _size = array_length(con_client.project_list);
		
		con_client.project_list[_size, 0] = _array[row, 0]; //sock do dono do projeto
		con_client.project_list[_size, 1] = _array[row, 1]; //id projeto
		con_client.project_list[_size, 2] = _inst;
		show_debug_message("PROJECT LIST>>>> " + string(con_client.project_list));
				
	}
	
	//con_client.project_list = _aux_array;
	for (var row = 0; row < array_length(con_client.project_list); row++){
		for (var col = 0; col < array_length(con_client.project_list[row]); col++){
			show_debug_message("VAL: " + string(con_client.project_list[row, col]));
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
			energia_var = _load.energia_var;
			energia_cons = _load.energia_cons;
			attributes_map = _load.attributes_map;
			voo = _load.voo;
		}
		ds_list_add(con_client.project_list, _inst);
	}
	*/
}