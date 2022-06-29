/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self) and !self.dica){
		self.dica = true;
		var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
		_dica.text = "Selecione o Projeto que servirá como SuperClasse (Lembre-se que uma classe Final não pode ser alterada).\nOs Robôs já Instanciados a partir desta classe NÃO serão destruidos.";
	
	}
	
	if (position_meeting(mouse_x, mouse_y, obj_projeto) and self.superclasse == noone and self.subclasse == noone){
		var _inst = position_meeting(mouse_x, mouse_y, obj_projeto);
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
		var _inst = position_meeting(mouse_x, mouse_y, obj_projeto);
		if (_inst.player_socket != con_client.server_socket){
			var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
			_dica.text = "Não é possível selecionar um projeto do oponente como Subclasse.";
		}
		else {
			self.subclasse = _inst;
		}
	}
}

if (self.superclasse != noone and self.subclasse != noone){
	scr_send_heranca(self.superclasse, self.subclasse);
	instance_destroy(self);
}