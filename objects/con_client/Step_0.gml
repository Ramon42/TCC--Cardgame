/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){ //draw card
	if (position_meeting(mouse_x, mouse_y, obj_deck)){
		show_debug_message("DRAW");
		scr_draw_card_client(1);
		//scr_update_client();
	}
	if (position_meeting(mouse_x, mouse_y, obj_card)){ 
		scr_get_card();
	}
	
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
			player.create_project = false;
		}
	}
}

if (mouse_check_button_released(mb_right)){ //draw card
		show_debug_message("UPDATE");
		scr_update_client();
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
