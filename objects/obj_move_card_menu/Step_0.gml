/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, cancel_move_bt)){
		obj_edit_project_menu.moving_card = false;
		instance_destroy(cancel_move_bt);
		instance_destroy(select__move_bt);
		instance_destroy(self);
	}
}