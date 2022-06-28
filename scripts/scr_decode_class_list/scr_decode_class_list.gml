// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_decode_class_list(_class_list){
    var _array = json_parse(_class_list);
	for (var i = 0; i < array_length(_array); i++){
		var _check = false;
		var _load = _array[i, 2];
		for (var o = 0; o < array_length(con_client.class_list); o++){
			if (_array[i, 0] == con_client.class_list[o, 0]){ //já criado
				_check = true;
				break;
			}
		}

		if (!_check){
			show_message("Criando classe");
			var _inst = instance_create_depth(0, 0,  -1, obj_classe_arma);
			if (_array[i, 0] == con_client.server_socket){
				_inst.x = 750;
				_inst.y = 900;
			
			}
			else{
				_inst.x = 750;
				_inst.y = 100;
			}
		
			with (_inst){
				image_xscale = 0.5;
				image_yscale = 0.5;
				sprite_index = _load.sprite;
				sprite = _load.sprite;
				player_socket = _load.player_socket;
				class_id = _load.class_id;
				dano = _load.dano;
				recarregar = _load.recarregar;
				recarregar_count = _load.recarregar;
			}
			var _size = array_length(con_client.class_list);
		
			con_client.class_list[_size, 0] = _array[i, 0]; //sock do dono do projeto
			con_client.class_list[_size, 1] = _array[i, 1]; //id projeto
			con_client.class_list[_size, 2] = _inst;
		}
		else {
			with (_array[i, 2]){
				image_xscale = 0.5;
				image_yscale = 0.5;
				sprite_index = _load.sprite;
				sprite = _load.sprite;
				player_socket = _load.player_socket;
				class_id = _load.class_id;
				dano = _load.dano;
				recarregar = _load.recarregar;
				recarregar_count = _load.recarregar_count;
			}
		}
	}
}