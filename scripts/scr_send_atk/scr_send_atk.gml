// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_atk(_atk, _def = undefined, _dmg){
	if (_def != undefined){ //atacando outro robo
		buffer_seek(con_client.buffer, buffer_seek_start, 0);
		buffer_write(con_client.buffer, buffer_u8, network.atk_instance);
		buffer_write(con_client.buffer, buffer_u32, _atk.inst_id); //inst_id do atacante
		buffer_write(con_client.buffer, buffer_u32, _def.inst_id); //inst_id do defensor
		buffer_write(con_client.buffer, buffer_u8, _dmg);
		network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
	}
	
	else{ //atacando diretamente
		show_message("SEND ATK ATACANDO DIRETO");
		scr_send_damage(_atk.inst_id, _dmg);
	}
}