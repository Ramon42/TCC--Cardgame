// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu_defender(_atk_id, _def_id, _dmg){
	var _atk;
	var _def = noone;
	for (var o = 0; o < array_length(con_client.instance_list); o++){
		if (con_client.instance_list[o, 1] == _atk_id){
			_atk = con_client.instance_list[o, 2];
			break;
		}
	}
	
	for (var i = 0; i < array_length(con_client.instance_list); i++){
		if (con_client.instance_list[i, 1] == _def_id){
			if (con_client.instance_list[i, 2].defender){
				_def = con_client.instance_list[i, 2];
				if (instance_number(obj_def_menu) < 1){ //caso já não exista esse menu
					show_message("CRIANDO MENU DEFENDER");
					var _menu = instance_create_depth(0, 0, -5, obj_def_menu);
					_menu.atk_recebido = _dmg;
					if (_def.escudo_var != 0){ _menu.escudo = _def.escudo_var; }
					else { _menu.escudo = _def.escudo_cons; }
					_menu.atk = _atk;
					_menu.def = _def;
					break;
				}
				else {
					var _size = array_length(con_client.player.def_menu_queue);
					con_client.player.def_menu_queue[_size, 0] = _dmg;
					if (_def.escudo_var != 0){ con_client.player.def_menu_queue[_size, 1] = _def.escudo_var; }
					else { con_client.player.def_menu_queue[_size, 1] = _def.escudo_cons; }
					con_client.player.def_menu_queue[_size, 2] = _atk;
					con_client.player.def_menu_queue[_size, 3] = _def;
				}
			}
		}
	}
	if (_def == noone){ //caso objeto alvo não tenha metodo de defender
		show_message("ALVO NÃO PODE BLOQUEAR");
		buffer_seek(con_client.buffer, buffer_seek_start, 0);
		buffer_write(con_client.buffer, buffer_u8, network.instance_dmg_calc);
		buffer_write(con_client.buffer, buffer_u8, _atk_id);
		buffer_write(con_client.buffer, buffer_u8, _def_id);
		buffer_write(con_client.buffer, buffer_bool, false);
		network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
	}
}