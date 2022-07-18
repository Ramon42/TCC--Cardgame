/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, cancel_bt)){
		con_client.player.create_project = false;
		//CASO O PROJETO SEJA CANCELADO, ADICIONAR TODAS AS CARTAS DA CARD_LIST PARA A MÃO DO JOGADOR
		for (var i = 0; i < ds_list_size(card_list); i++){
			ds_list_add(con_client.player.hand, card_list[|i]);
		}
		scr_show_hand();
		
		instance_destroy(projeto);
		ds_list_destroy(card_list);
		instance_destroy(obj_create_class_menu);
		instance_destroy(obj_class_menu_parent_bt);

	}

	
	if (position_meeting(mouse_x, mouse_y, obj_add_card_bt)){ //botão ligado à carta
		if (ds_list_find_index(card_list, con_client.player.card_selected) == -1){
			//checa se já não existe outra carta de mesmo nome
			for (var i = 0; i < card_list_size; i++){
				if (card_list[|i].card_subtype == con_client.player.card_selected.card_subtype){
					
					//mensagens personalizadas para ajudar o jogador no erro ficarão aqui
					if (card_list[|i].card_type == CARDTYPE.VARIAVEL){
						var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
						_dica.text = "Já existe uma Variável de mesmo nome!";
						exit;
					}
					else if (card_list[|i].card_type == CARDTYPE.CONSTANTE){
						var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
						_dica.text = "Já existe uma Variável de mesmo nome!";
						exit;
					}
					else if (card_list[|i].card_type == CARDTYPE.METODO){
						var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
						_dica.text = "Já existe uma Variável de mesmo nome!";
						exit;
					}
				}
			}
			//caso passe a verificação:
			con_client.player.card_selected.in_project = true;
			ds_list_add(card_list, con_client.player.card_selected);
			card_list_size = ds_list_size(card_list);
			array_push(projeto.sprite_list, con_client.player.card_selected.sprite_index);
			scr_add_value_to_project_new(card_list, projeto);
			scr_org_cards_in_project(card_list, card_list_size); //organiza os sprites dentro da interface
			
			//DELETAR AQUI CARTAS DA MÃO ADICIONADAS AO PROJETO
			var pos = ds_list_find_index(con_client.player.hand, con_client.player.card_selected);
			ds_list_delete(con_client.player.hand, pos);
		}
		else{
			var _dica = instance_create_depth(0,0,0, obj_dicas_menu);
			_dica.text = "Esta carta já pertence a este Projeto!";
		}
	}
}

//ANOTAÇÃO
//PARA CHECAR NA HORA DE COLOCAR O BOTÃO DE RETIRAR A CARTA DO PROJETO
//ds_list_find_index(player.hand, _inst) != -1 
