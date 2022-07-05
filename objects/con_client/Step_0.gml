/// @description Insert description here
// You can write your code in this editor

self.alarm[0] = 1;


if (mouse_check_button_released(mb_left)){ //draw card
	
	
	if (position_meeting(mouse_x, mouse_y, obj_deck)){
		show_debug_message("DRAW");
		scr_draw_card_client(1);
		//scr_update_client();
	}
	
	
	/*
	if (position_meeting(mouse_x, mouse_y, obj_card)){ 
		scr_get_card();
	}
	*/
	
	if (instance_find(obj_create_class_menu, 0) != noone) {
		if (position_meeting(mouse_x, mouse_y, obj_create_class_menu.save_bt)){
			player.card_selected = noone;
			scr_send_project(obj_create_class_menu.projeto);
			instance_destroy(obj_create_class_menu.projeto);
			for (var i = 0; i < ds_list_size(obj_create_class_menu.card_list); i++){
				instance_destroy(obj_create_class_menu.card_list[|i]);
			}
			instance_destroy(obj_create_class_menu);
			instance_destroy(obj_class_menu_parent_bt);
			scr_call_update();
			var _dica = instance_create_depth(0, 0, 0, obj_dicas_menu);
			_dica.text = "Agora que criou um Projeto, você pode selecioná-lo na sua lista de Projetos. \nCaso tenha uma carta de Robô na mão selecione um Projeto e clique em ''Instanciar'' para criar um Objeto em campo.";
			player.create_project = false;
		}
	}
}

if (mouse_check_button_released(mb_right)){ //draw card
		show_debug_message("UPDATE");
		scr_update_client();
}

if (con_client.player != noone){
	if (!con_client.player.edit_project and !con_client.player.create_project){
		scr_set_projects_position(con_client.project_list);
		scr_call_update();
	}
}

//PLACEHOLDER PARA TELA DE CRIAÇÃO DE CLASSE

if (keyboard_check_released(ord("C"))){
	show_debug_message("C");
	instance_create_layer(0, 0, "Menu_edit_project", obj_create_class_menu);
}


/*

	scr_update_client(player.hand_size);
}
*/
