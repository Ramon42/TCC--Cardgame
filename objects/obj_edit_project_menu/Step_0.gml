/// @description Insert description here
// You can write your code in this editor




if (mouse_check_button_released(mb_left)){
	
	//ATUALIZANDO AQUI PRA N SE PERDER
	if (position_meeting(mouse_x, mouse_y, obj_projeto)){ //teste pra drag and drop em cima de um projeto
		var _inst;
		_inst = instance_position(mouse_x, mouse_y, obj_projeto);
		if(_inst.id == self.projeto.id){
			show_message("Esta carta já pertence a esse Projeto");
		}
		else { //aqui deve ser atualizado tanto o projeto atual (saida da carta) quanto o novo alvo da carta
			show_message(_inst.id);
			show_message(con_client.player.card_selected);
			scr_send_updated_project(self.projeto, _inst, con_client.player.card_selected);
		}

	}
	//
	
	for (var i = 0; i < ds_list_size(self.card_list); i++){
		if(instance_exists(card_list[|i])){
			if (self.card_list[|i].move_card == true){
				//scr_set_project_to_move(); //CHAMAR ESSE SCRIPT EM UM LUGAR QUE NÃO FIQUE SE REPETINDO
				self.card_list[|i].image_alpha = 0.6;
			}
		}

	}
	
	if (position_meeting(mouse_x, mouse_y, obj_move_card_bt)){
		moving_card = true;
		instance_create_depth(0, 0, -10, obj_move_card_menu);
	}
	if (!moving_card){ //trava todos os botões caso esteja movendo uma carta
		if (position_meeting(mouse_x, mouse_y, cancel_bt)){
			//self.projeto.created = false;
			con_client.player.edit_project = false;
			if (instance_exists(con_client.player.card_selected)){
				con_client.player.card_selected.move_card = false;
				con_client.player.card_selected = noone;
			}
			for (var i = 0; i < ds_list_size(obj_edit_project_menu.card_list); i++){
				obj_edit_project_menu.card_list[|i].x = -700;
			}
			scr_set_projects_position(con_client.project_list);
			ds_list_destroy(self.card_list);
			instance_destroy(obj_edit_project_menu);
			instance_destroy(obj_class_menu_parent_bt);
		
		}
		else if (position_meeting(mouse_x, mouse_y, save_bt)){
		}
	}
	
}


