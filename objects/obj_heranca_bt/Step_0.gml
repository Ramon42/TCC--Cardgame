/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (!position_meeting(mouse_x,mouse_y,self) and !self.dica){
		instance_destroy(self);
	}
	if (position_meeting(mouse_x, mouse_y, self) and !self.dica){
		self.dica = true;
		var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
		_dica.text = "Selecione o Projeto que servirá como SuperClasse (Lembre-se que uma classe Final não pode ser alterada).\nOs Robôs já Instanciados a partir desta classe NÃO serão destruidos.";
		self.x = -500;
		con_client.player.in_heranca = true;
	}
	
	else if (position_meeting(mouse_x, mouse_y, obj_projeto) and self.superclasse == noone and self.subclasse == noone){
		var _inst = instance_position(mouse_x, mouse_y, obj_projeto);
		if (_inst.player_socket != con_client.server_socket){
			var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
			_dica.text = "Não é possível selecionar um projeto do oponente como SuperClasse.";
		}
		else {
			self.superclasse = _inst;
			var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
			_dica.text = "Agora selecione o Projeto que servirá como Subclasse (Lembre-se que uma classe Final não pode ser alterada).\nTodos os Robôs já Instanciados a partir desta classe serão destruidos.";
		}
	}
	
	else if (position_meeting(mouse_x, mouse_y, obj_projeto) and self.superclasse != noone and self.subclasse == noone){
		var _inst = instance_position(mouse_x, mouse_y, obj_projeto);
		if (_inst.project_id == self.superclasse.project_id){
			var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
			_dica.text = "Não é possível selecionar a Superclasse como Subclasse.";
		}
		else if (_inst.player_socket != con_client.server_socket){
			var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
			_dica.text = "Não é possível selecionar um projeto do oponente como Subclasse.";
		}
		else {
			self.subclasse = _inst;
		}
	}
}

if (self.superclasse != noone and self.subclasse != noone){
	con_client.player.in_heranca = false;
	scr_send_heranca(self.superclasse, self.subclasse);
	scr_call_update();
	for (var i = 0; i < ds_list_size(con_client.player.hand); i++){
		if (con_client.player.hand[|i].card_subtype == SUBTYPE.HERANCA){
			instance_destroy(con_client.player.hand[|i]);
			ds_list_delete(con_client.player.hand, i); //deleta carta da mão do jogador
			scr_show_hand();
			break;
		}
	}
	con_client.player.card_selected = noone;
	instance_destroy(self);
}