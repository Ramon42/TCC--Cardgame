/// @description Insert description here
// You can write your code in this editor

if (!self.atk_path){
	self.atk_path = true;
	path_start(self.pth, 75, path_action_stop, false);
}

if (mouse_check_button_released(mb_left)){
	var _atk_direct = true; //caso seja true, o jogador atacará o oponente diretamente
	if (position_meeting(mouse_x, mouse_y, self)){
		//caso o jogador clique na carta durante a fase de batalha
		if(self.inst_sock_id == con_client.server_socket and con_client.player.state == PLAYERSTATE.BATTLE_PHASE){
			show_message("ENTRA NO ROBO SHINJI");
			self.selected = true;
			con_client.player.card_selected = noone;
			with(obj_card_preview){ instance_destroy(); }
			instance_destroy(obj_action_bt_parent);
		
			if (self.atacar_1){
				//caso possa usar o método atacar_1
				self.atk_bt = instance_create_depth(0, 0, -1, obj_atk_bt);
			}
		}
	}
	if (position_meeting(mouse_x, mouse_y, self.atk_bt) and self.selected){
		self.attacking = true;
		for (var i = 0; i < array_length(con_client.instance_list); i++){
			if (con_client.server_socket != con_client.instance_list[i, 0]){
				show_message("OPONENTE POSSUI ROBO, NÃO É POSSIVEL ATACAR DIRETAMENTE!");
				_atk_direct = false;
				break;
			}
		}
	}
	if (self.attacking){ //selecionar alvo do ataque
		if (position_meeting(mouse_x, mouse_y, obj_robo)){
			var _inst = instance_position(mouse_x, mouse_y, obj_robo);
			if(_inst.inst_sock_id != con_client.server_socket){
				show_message("ALVO SELECIONADO")
				scr_send_atk(self, _inst);
				//significa que selecionou um robo que não é do jogador como alvo
				self.pth = path_duplicate(pth_test);
				var _ang = (point_direction(self.x, self.y, _inst.x, _inst.y))-90;
				path_rotate(self.pth, _ang);
				self.atk_path = false;
				self.attacking = false;
			}
		}
		if (_atk_direct){
			//ataca diretamente
			scr_send_atk(self, undefined);
		}
	}
	
	if (!position_meeting(mouse_x, mouse_y, obj_robo) and !position_meeting(mouse_x, mouse_y, self.atk_bt)){
		self.selected = false;
		self.attacking = false;
		instance_destroy(self.atk_bt);
	}
}