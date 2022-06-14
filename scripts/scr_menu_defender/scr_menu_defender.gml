// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu_defender(_atk_id, _def_id){
	var _atk;
	for (var o = 0; o < con_client.instance_list; o++){
		if (con_client.instance_list[o, 1] == _atk_id){
			_atk = con_client.instance_list[o, 2];
			break;
		}
	}
	
	for (var i = 0; i < con_client.instance_list; i++){
		if (con_client.instance_list[i, 1] == _def_id){
			if (con_client.instance_list[i, 2].defender){
				show_message("CRIANDO MENU DEFENDER");
				var _menu = instance_create_depth(0, 0, -5, obj_def_menu);
				if (_atk.forca_var != 0){ _menu.atk_recebido = _atk.forca_var; }
				else { _menu.atk_recebido = _atk.forca_cons; } 
				_menu.escudo = con_client.instance_list[i, 2].escudo;
				break;
			}
		}
	}
	show_message("CRIANDO MENU DEFENDER");
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.instance_dmg_calc);
	buffer_write(buffer, buffer_u8, _atk_id);
	buffer_write(buffer, buffer_u8, _def_id);
	network_send_packet(_sock_op, buffer, buffer_tell(buffer));
}