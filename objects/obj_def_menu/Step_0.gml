/// @description Insert description here
// You can write your code in this editor

self.dmg_restante = self.atk_recebido - self.escudo;
if (self.dmg_restante < 0){ self.dmg_restante = 0; }

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self.bloquear_bt)){
		buffer_seek(con_client.buffer, buffer_seek_start, 0);
		buffer_write(con_client.buffer, buffer_u8, network.instance_dmg_calc);
		buffer_write(con_client.buffer, buffer_u8, self.atk.inst_id);
		buffer_write(con_client.buffer, buffer_u8, self.def.inst_id);
		buffer_write(con_client.buffer, buffer_u8, self.atk_recebido);
		buffer_write(con_client.buffer, buffer_bool, true);
		network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
		
		instance_destroy(self.bloquear_bt);
		instance_destroy(self.n_bloquear_bt);
		instance_destroy(self);
	}
	else if (position_meeting(mouse_x, mouse_y, self.n_bloquear_bt)){
		buffer_seek(con_client.buffer, buffer_seek_start, 0);
		buffer_write(con_client.buffer, buffer_u8, network.instance_dmg_calc);
		buffer_write(con_client.buffer, buffer_u8, self.atk.inst_id);
		buffer_write(con_client.buffer, buffer_u8, self.def.inst_id);
		buffer_write(con_client.buffer, buffer_u8, self.atk_recebido);
		buffer_write(con_client.buffer, buffer_bool, false);
		network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
		
		instance_destroy(self.bloquear_bt);
		instance_destroy(self.n_bloquear_bt);
		instance_destroy(self);

	}
}