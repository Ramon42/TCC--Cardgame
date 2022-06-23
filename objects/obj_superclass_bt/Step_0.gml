/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, obj_card)){
		instance_destroy(self);
	}
}