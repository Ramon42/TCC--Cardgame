/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, obj_move_card_bt)){
		moving_card = true;
		instance_create_depth(0, 0, -10, obj_move_card_menu);
	}
	if (!moving_card){ //trava todos os botões caso esteja movendo uma carta
		if (position_meeting(mouse_x, mouse_y, cancel_bt)){
			con_client.player.edit_project = false;
			con_client.player.card_selected = noone;
			for (var i = 0; i < ds_list_size(obj_edit_project_menu.card_list); i++){
				obj_edit_project_menu.card_list[|i].x = -700;
			}
			scr_set_projects_position(con_client.project_list);
			instance_destroy(projeto);
			ds_list_destroy(card_list);
			instance_destroy(obj_edit_project_menu);
			instance_destroy(obj_class_menu_parent_bt);
		
		}
		else if (position_meeting(mouse_x, mouse_y, save_bt)){
		}
	}
}