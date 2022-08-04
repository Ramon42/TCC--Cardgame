/// @description Insert description here
// You can write your code in this editor

if (con_client.player.state != PLAYERSTATE.BATTLE_PHASE){
	if (instance_exists(self.atk1_bt)){ instance_destroy(self.atk1_bt); }
	if (instance_exists(self.atk2_bt)){ instance_destroy(self.atk2_bt); }
	if (instance_exists(self.explodir_bt)){ instance_destroy(self.explodir_bt); }
	if (instance_exists(self.usar_arma_bt)){ instance_destroy(self.usar_arma_bt); }
	if (instance_exists(self.voar_bt)){ instance_destroy(self.voar_bt); }
	if (instance_exists(self.inverter_bt)){ instance_destroy(self.inverter_bt); }
}

if (!self.atk_path){
	self.atk_path = true;
	path_start(self.pth, 75, path_action_stop, false);
}



if (mouse_check_button_released(mb_left)){
	
	if (position_meeting(mouse_x, mouse_y, self)){
		var _pos = 0;
		show_debug_message("EXECUTOU METODO= " + string(self.executou_metodo));
		instance_destroy(obj_action_bt_parent);
		/*
		if (self.inst_sock_id == con_client.server_socket and con_client.player.state == PLAYERSTATE.MAIN_PHASE1){
			_pos = 0;
			self.selected = true;
			if (self.voar and !self.executou_metodo){
				self.voar_bt = instance_create_depth(self.bt_pos[_pos, 0], self.bt_pos[_pos, 1], -1, obj_voar_bt);
				_pos++;
			}
			if (self.inverter and !self.executou_metodo){
				self.inverter_bt = instance_create_depth(self.bt_pos[_pos, 0], self.bt_pos[_pos, 1], -1, obj_invert_bt);
				_pos++;
			}
		}
		*/
		//caso o jogador clique na carta durante a fase de batalha
		if(self.inst_sock_id == con_client.server_socket and con_client.player.state == PLAYERSTATE.BATTLE_PHASE){
			_pos = 0;
			self.selected = true;
			con_client.player.card_selected = noone;
			//with(obj_card_preview){ instance_destroy(); }
			//instance_destroy(obj_action_bt_parent);
			if (self.usar_arma and !self.executou_metodo){
				for (var i = 0; i < array_length(con_client.class_list); i++){
					if (con_client.class_list[i, 0] == con_client.server_socket){
						self.usar_arma_bt = instance_create_depth(self.bt_pos[_pos, 0], self.bt_pos[_pos, 1], -1, obj_usar_arma_bt);
						_pos++;
						break;
					}
				}
			}
			
			if (self.voar and !self.executou_metodo){
				self.voar_bt = instance_create_depth(self.bt_pos[_pos, 0], self.bt_pos[_pos, 1], -1, obj_voar_bt);
				_pos++;
			}
			if (self.inverter and !self.executou_metodo){
				self.inverter_bt = instance_create_depth(self.bt_pos[_pos, 0], self.bt_pos[_pos, 1], -1, obj_invert_bt);
				_pos++;
			}
			if (self.atacar_1 and !self.executou_metodo){
				//caso possa usar o método atacar_1
				self.atk1_bt = instance_create_depth(self.bt_pos[_pos, 0], self.bt_pos[_pos, 1], -1, obj_atk1_bt);
				_pos++;
			}
			if (self.atacar_2 and !self.executou_metodo){
				self.atk2_bt = instance_create_depth(self.bt_pos[_pos, 0], self.bt_pos[_pos, 1],0 -1, obj_atk2_bt);
				_pos++;
			}
			if (self.explodir and !self.executou_metodo){
				self.selected = true;
				self.explodir_bt = instance_create_depth(self.bt_pos[_pos, 0], self.bt_pos[_pos, 1], -1, obj_explodir_bt);
				_pos++;
			}
		}
	}
	
	//metodo voar
	if (position_meeting(mouse_x, mouse_y, self.voar_bt) and self.selected and self.voo != noone){
		if (self.voo){
			self.voo = false;
		}
		else {
			self.voo = true;
		}
		scr_update_voar(self.inst_id, self.voo);
		self.executou_metodo = true;
		instance_destroy(self.voar_bt);
	}
	//
	
	//metodo usar arma
	if (position_meeting(mouse_x, mouse_y, self.usar_arma_bt)){
		_count = 0;
		for (var i = 0; i < array_length(con_client.class_list); i++){
			if (con_client.class_list[i, 0] == con_client.server_socket){
				self.arma = con_client.class_list[i, 2];
				if (self.arma.recarregar_count >= self.arma.recarregar){
					//checa se a arma já carregou para chamar o método de atirar
					self.atirar = true;
					break;
				}
				break;
			}
		}
		if (!self.atirar){
			var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
			_dica.text = "A arma ainda está recarregando, aguarde " + string(self.arma.recarregar - self.arma.recarregar_count) + " turno(s) para recarregar!";
		}
		for (var i = 0; i < array_length(con_client.instance_list); i++){
			if (con_client.server_socket != con_client.instance_list[i, 0]){
				atk_direct = false;
				var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
				_dica.text = "Selecione um Robô inimigo para atacar!";
				break;
			}
			else if (_count == 0){
				atk_direct = true;
			}
		}
		instance_destroy(self.usar_arma_bt);
	}
	//
	
	//metodo explodir
	if (position_meeting(mouse_x, mouse_y, self.explodir_bt) and self.selected){
		self.explode = true;
	}
	if (self.explode){
		if (position_meeting(mouse_x, mouse_y, obj_robo)){
			var _inst = instance_position(mouse_x, mouse_y, obj_robo);
			if(_inst.inst_sock_id != con_client.server_socket){
				scr_send_explode(self, _inst);
				self.executou_metodo = true;
				instance_destroy(obj_combat_bt_base);
			}
		}
	}
	//
	//metodo inverter
	if (position_meeting(mouse_x, mouse_y, self.inverter_bt) and self.selected and !self.executou_metodo){
		var _count = 0;
		for (var i = 0; i < array_length(self.sprite_list); i++){
			if (self.sprite_list[i] == spr_card_energia1 or self.sprite_list[i] == spr_card_energia2 or
			self.sprite_list[i] == spr_card_escudo1_var or self.sprite_list[i] == spr_card_escudo2_var or 
			self.sprite_list[i] == spr_card_forca1_var or self.sprite_list[i] == spr_card_forca2_var){
				_count++;
			}
			if (_count >= 2){ break; }
		}
		if (_count >= 2){ 
			scr_inverter_create(self); 
			self.executou_metodo = true;
			}
		else { 
			var _menu = instance_create_depth(0,0,0,obj_dicas_menu);
			_menu.text = "Não é possível inverter duas Variáveis desse Projeto pois ele possui menos de duas Variáveis!\nLembre-se que não é possível alterar o valor de uma Constante!"}
		instance_destroy(self.inverter_bt);
	}
	//

	if ((position_meeting(mouse_x, mouse_y, self.atk1_bt) or position_meeting(mouse_x, mouse_y, self.atk2_bt)) and self.selected and !self.executou_metodo){
		var _text = "";
		con_client.player.in_atk = true;
		var _count = 0; //contador para saber se pode executar o método atacar 2 (oponente precisa ter 2+ robos)
		if (position_meeting(mouse_x, mouse_y, self.atk1_bt)) { 
			self.attacking1 = true; 
			_text = "Selecione um Robô inimigo para atacar!";
		}
		else if (position_meeting(mouse_x, mouse_y, self.atk2_bt)) { 
			self.attacking2 = true; 
			_text = "Selecione dois Robôs inimigos para atacar!";
		}
		if (!self.voo){
			for (var i = 0; i < array_length(con_client.instance_list); i++){
				if (con_client.server_socket != con_client.instance_list[i, 0]){
					var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
					_dica.text = _text;
					atk_direct = false;
					_count ++;
					if (_count >= 2){
						break;
					}
				}
				else if (_count == 0){
					atk_direct = true;
				}
			}
			if (_count < 2 and self.attacking2){
				self.attacking2 = false;
				var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
				_dica.text = "O oponente possui menos de dois Robôs, não é possível utilizar este Método";
			}
		}
		else {
			for (var i = 0; i < array_length(con_client.instance_list); i++){
				if (con_client.server_socket != con_client.instance_list[i, 0]){
					if (con_client.instance_list[i, 2].voo){
						var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
					    _dica.text = "Oponente possui Robô(s) voando, "+_text;
						atk_direct = false;
						_count ++;
						if (_count >= 2){
							break;
						}
					}
					else if (_count == 0){
						atk_direct = true;
					}
				}
			}
			if (_count < 2 and self.attacking2){
				self.attacking2 = false;
				var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
				_dica.text = "O oponente possui menos de dois Robôs, não é possível utilizar este Método";
			}
		}
	}

	if (self.atirar and !self.executou_metodo){
		if (position_meeting(mouse_x, mouse_y, obj_robo)){
			var _inst = instance_position(mouse_x, mouse_y, obj_robo);
			if(_inst.inst_sock_id != con_client.server_socket){
				self.executou_metodo = true;
				scr_send_atk(self, _inst, self.arma.dano);
				self.arma.recarregar_count = 0;
				scr_att_recarga(self.arma);
				self.atirar = false;
			}
		}
		else if (self.atk_direct){
			self.executou_metodo = true;
			scr_send_atk(self, undefined, self.arma.dano);
			self.arma.recarregar_count = 0;
			scr_att_recarga(self.arma);
			self.atirar = false;
			self.atk_direct = false;
		}
	}
	
	if (self.attacking1){ //selecionar alvo do ataque
		if (position_meeting(mouse_x, mouse_y, obj_robo)){
			var _inst = instance_position(mouse_x, mouse_y, obj_robo);
			if(_inst.inst_sock_id != con_client.server_socket){
				self.executou_metodo = true;
				if(self.forca_var > 0) { scr_send_atk(self, _inst, self.forca_var); }
				else { scr_send_atk(self, _inst, self.forca_cons); }
				//significa que selecionou um robo que não é do jogador como alvo
				self.pth = path_duplicate(pth_test);
				var _ang = (point_direction(self.x, self.y, _inst.x, _inst.y))-90;
				path_rotate(self.pth, _ang);
				self.atk_path = false;
				self.attacking1 = false;
				con_client.player.in_atk = false;
			}
		}
		else if (atk_direct){
			//ataca diretamente  
			self.executou_metodo = true;
			if(self.forca_var > 0) { scr_send_atk(self, undefined, self.forca_var); }
			else { scr_send_atk(self, undefined, self.forca_cons); }
			self.attacking1 = false;
			self.atk_direct = false;
			con_client.player.in_atk = false;
		}
	}
	else if (self.attacking2){
		if (position_meeting(mouse_x, mouse_y, obj_robo) and self.atk2_count == 0){
			var _alvo1 = instance_position(mouse_x, mouse_y, obj_robo);
			if(_alvo1.inst_sock_id != con_client.server_socket){
				self.pth = path_duplicate(pth_test);
				var _ang = (point_direction(self.x, self.y, _alvo1.x, _alvo1.y))-90;
				path_rotate(self.pth, _ang);
				self.atk_path = false;
				self.atk_list[0, 0] = self;
				self.atk_list[0, 1] = _alvo1;
				if(self.forca_var > 0) { self.atk_list[0, 2] = self.forca_var; }
				else { self.atk_list[0, 2] = self.forca_cons; }

				self.atk2_count = 1;
			}
		}
		else if (position_meeting(mouse_x, mouse_y, obj_robo) and self.atk2_count == 1){
			var _alvo2 = instance_position(mouse_x, mouse_y, obj_robo);
			if(_alvo2.inst_sock_id != con_client.server_socket){
				self.executou_metodo = true;
				//scr_send_atk(self, _alvo2, self.dmg_rest);
				self.pth = path_duplicate(pth_test);
				var _ang = (point_direction(self.x, self.y, _alvo2.x, _alvo2.y))-90;
				path_rotate(self.pth, _ang);
				self.atk_path = false;
				self.atk_list[1, 0] = self;
				self.atk_list[1, 1] = _alvo2;
				self.atk_menu = instance_create_depth(0, 0, -2, obj_atk2_menu);
				self.atk_menu.menu_list = self.atk_list;
				self.atk_menu.max_dmg = self.atk_list[0, 2];
				
				self.atk2_count = 0;
				self.attacking2 = false;
				con_client.player.in_atk = false;
			}
		}
	}
	
	if (!position_meeting(mouse_x, mouse_y, obj_robo) and !position_meeting(mouse_x, mouse_y, obj_combat_bt_base) and !position_meeting(mouse_x, mouse_y, obj_ok_bt)){
		self.selected = false;
		self.attacking1 = false;
		self.attacking2 = false;
		instance_destroy(obj_combat_bt_base);
	}
}


self.texto_auxiliar = "Objeto Robô: \n";
if (self.forca_var != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int var Força= " + string(self.forca_var) + "\n";
}
else if (self.forca_cons != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int cons Força= " + string(self.forca_cons)+ "\n";
}
if (self.escudo_var != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int var Escudo= " + string(self.escudo_var)+ "\n";
}
else if (self.escudo_cons != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int cons Escudo= " + string(self.escudo_cons)+ "\n";
}
if (self.energia != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int var Energia= " + string(self.energia)+ "\n";
}
if (self.voo != noone){
	if (self.voo){ self.texto_auxiliar = self.texto_auxiliar + "-bool var Voo= True\n"; }
	else{ self.texto_auxiliar = self.texto_auxiliar + "-bool var Voo= False\n"; }
}
if (self.voar){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Voar()\n";
}
if (self.atacar_1){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Atacar(Objeto)\n";
}
if (self.atacar_2){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Atacar(Objeto, Objeto)\n";
}
if (self.defender){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Defender(Ataque)\n";
}
if (self.refletir){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Refletir(Ataque)\n";
}
if (self.explodir){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Explodir(Objeto)\n";
}
if (self.inverter){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Inverter(Var, Var)\n";
}
if (self.usar_arma){
	self.texto_auxiliar = self.texto_auxiliar + "-Método UsarArma()\n";
}