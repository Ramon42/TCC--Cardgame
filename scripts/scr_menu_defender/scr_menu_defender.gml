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
				show_message("CRIANDO MENU DEFENDER");
				var _menu = instance_create_depth(0, 0, -5, obj_def_menu);
				if (_atk.forca_var != 0){ _menu.atk_recebido = _atk.forca_var; }
				else { _menu.atk_recebido = _atk.forca_cons; } 
				if (_def.escudo_var != 0){ _menu.escudo = _def.escudo_var; }
				else { _menu.escudo = _def.escudo_cons; }
				_menu.atk = _atk;
				_menu.def = con_client.instance_list[i, 2];
				break;
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