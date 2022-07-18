/// @description Insert description here
// You can write your code in this editor




if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, obj_add_card_bt)){ //adicionar cartas da mão ao projeto
		if (ds_list_find_index(card_list, con_client.player.card_selected) == -1){
			//checa se já não existe outra carta de mesmo nome
			for (var i = 0; i < card_list_size; i++){
				if (card_list[|i].card_subtype == con_client.player.card_selected.card_subtype){
					
					//mensagens personalizadas para ajudar o jogador no erro ficarão aqui
					if (card_list[|i].card_type == CARDTYPE.VARIAVEL){
						var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
						_dica.text = "Já existe uma Variavel de mesmo nome neste projeto!";
						exit;
					}
					else if (card_list[|i].card_type == CARDTYPE.CONSTANTE){
						var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
						_dica.text = "Já existe uma Constante de mesmo nome neste projeto!";
						exit;
					}
					else if (card_list[|i].card_type == CARDTYPE.METODO){
						var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
						_dica.text = "Já existe um Método de mesmo nome neste projeto!";
						exit;
					}
				}
			}
			//caso passe a verificação:
			con_client.player.card_selected.in_project = true;
			ds_list_add(self.card_list, con_client.player.card_selected);
			card_list_size = ds_list_size(card_list);
			array_push(self.projeto.sprite_list, con_client.player.card_selected.sprite_index);
			
			scr_add_card_to_project(self.projeto, self.card_list, self.card_list_size);
			//scr_org_cards_in_project(card_list, card_list_size); //organiza os sprites dentro da interface
			//scr_edit_add_card(self.projeto);
			array_push(self.new_sprites, con_client.player.card_selected.sprite_index);
			//DELETAR AQUI CARTAS DA MÃO ADICIONADAS AO PROJETO
			var pos = ds_list_find_index(con_client.player.hand, con_client.player.card_selected);
			ds_list_delete(con_client.player.hand, pos);
			self.alarm[0] = 0;
			self.alterado = true;
		}
		else{
			var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
			_dica.text = "Esta carta já pertence a este Projeto!";
		}
		
	}
	if (position_meeting(mouse_x, mouse_y, save_bt)){
		if (self.alterado){ 
			scr_edit_add_card(self.projeto, self.new_sprites); 
		}
		self.projeto.created = false;
		scr_set_projects_position(con_client.project_list);
		scr_call_update();
		
		con_client.player.edit_project = false;
		con_client.player.card_selected = noone;
		for (var i = 0; i < ds_list_size(self.card_list); i++){
			instance_destroy(self.card_list[|i]);
		}
		for (var i = 0; i < ds_list_size(self.projeto.cards_in_project); i++){
			instance_destroy(self.projeto.cards_in_project[|i]);
		}
		ds_list_destroy(self.card_list);
		instance_destroy(self.save_bt);
		instance_destroy(self);
	}
	
	
	//ATUALIZANDO AQUI PRA N SE PERDER
	if (position_meeting(mouse_x, mouse_y, obj_move_card_bt)){
		self.moving_card = true;
		var _mv = instance_create_depth(0, 0, -3, obj_move_card_menu);
		_mv.project = self.projeto;
	}
	if (position_meeting(mouse_x, mouse_y, obj_projeto) and self.moving_card){ //teste pra drag and drop em cima de um projeto
		var _inst;
		_inst = instance_position(mouse_x, mouse_y, obj_projeto);
		if(_inst.id == self.projeto.id){
			var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
			_dica.text = "Esta carta já pertence a este Projeto!";
		}
		else { //aqui deve ser atualizado tanto o projeto atual (saida da carta) quanto o novo alvo da carta
			con_client.player.card_selected.image_alpha = 0.6;
			scr_send_updated_project(self.projeto, _inst, con_client.player.card_selected);
		}

	}
	//
	
}


