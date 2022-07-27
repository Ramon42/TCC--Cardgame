// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu_defender(_atk_id, _def_id, _dmg){
	var _atk;
	var _def = noone;
	for (var o = 0; o < array_length(con_client.instance_list); o++){
		if (con_client.instance_list[o, 2].inst_id == _atk_id){
			_atk = con_client.instance_list[o, 2];
			break;
		}
	}
	for (var i = 0; i < array_length(con_client.instance_list); i++){
		if (con_client.instance_list[i, 2].inst_id == _def_id){
			if (con_client.instance_list[i, 2].defender){
				var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
				_dica.text = "Oponente atacou seu Robô, mas ele possui o Método Defender(Ataque), logo, sofrerá dano igual a ATAQUE RECEBIDO - ESCUDO";
				_def = con_client.instance_list[i, 2];
				buffer_seek(con_client.buffer, buffer_seek_start, 0);
				buffer_write(con_client.buffer, buffer_u8, network.instance_dmg_calc);
				buffer_write(con_client.buffer, buffer_u32, _atk_id);
				buffer_write(con_client.buffer, buffer_u32, _def_id);
				buffer_write(con_client.buffer, buffer_u8, _dmg);
				buffer_write(con_client.buffer, buffer_bool, true);
				network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
				break;
			}
		}
	}
	if (_def == noone){ //caso objeto alvo não tenha metodo de defender
		//show_message("ALVO NÃO PODE BLOQUEAR");
		var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
		_dica.text = "Oponente atacou seu Robô que não possui o Método Defender(Ataque), logo, ele sofrerá dano na ENERGIA igual à FORÇA do Robô atacante.";
		buffer_seek(con_client.buffer, buffer_seek_start, 0);
		buffer_write(con_client.buffer, buffer_u8, network.instance_dmg_calc);
		buffer_write(con_client.buffer, buffer_u32, _atk_id);
		buffer_write(con_client.buffer, buffer_u32, _def_id);
		buffer_write(con_client.buffer, buffer_u8, _dmg);
		buffer_write(con_client.buffer, buffer_bool, false);
		network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
	}
}