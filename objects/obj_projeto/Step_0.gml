/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self) and !con_client.player.edit_project and !con_client.player.create_project and (con_client.player.state == PLAYERSTATE.MAIN_PHASE1 or con_client.player.state == PLAYERSTATE.MAIN_PHASE2)){
		con_client.player.card_selected = noone;
		with(obj_card_preview){ instance_destroy(); }
		self.selected = true;
		con_client.player.edit_project = true;
		
		//checa se o projeto é do jogador ou do oponente (caso do oponente, só
								//pode usar cartas como incremento e decremento)
		
		if (player_socket == con_client.server_socket) {
			show_message("O PROJETO PERTENCE AO JOGADOR");
			scr_edit_project_create(self, true);
		}
		else {
			show_message("O PROJETO PERTENCE AO OPONENTE");
			scr_edit_project_create(self, false);
		}
		
	}
	else if (position_meeting(mouse_x, mouse_y, obj_card)){
		self.selected = false;
	}
}

col = x - aux_x*0.75;

lin_for = y-aux_y/6;;
lin_esc = y+aux_y/6;