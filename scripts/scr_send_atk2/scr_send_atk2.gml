// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_atk2(_atk, _def1 = undefined, _def2 = undefined, _dmg){
	if (_def1 != undefined and _def2 != undefined){
		buffer_seek(con_client.buffer, buffer_seek_start, 0);
		buffer_write(con_client.buffer, buffer_u8, network.atk_instance2);
		buffer_write(con_client.buffer, buffer_u8, _atk.inst_id); //inst_id do atacante
		buffer_write(con_client.buffer, buffer_u8, _def1.inst_id); //inst_id do defensor
		buffer_write(con_client.buffer, buffer_u8, _def2.inst_id); //inst_id do defensor
		buffer_write(con_client.buffer, buffer_u8, _dmg); //dano que vai para o primeiro objeto
		if (_atk.forca_var != 0){ buffer_write(con_client.buffer, buffer_u8, _atk.forca_var); }
		else { buffer_write(con_client.buffer, buffer_u8, _atk.forca_cons); }
		network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
	}
	else if (_def1 != undefined and _def2 == undefined){ //atacando outro robo
		scr_send_atk(_atk, _def1);
	}
	
	else if (_def1 == undefined and _def2 == undefined){ //atacando diretamente
		show_message("SEND ATK ATACANDO DIRETO");
		scr_send_damage(_atk);
	}
}