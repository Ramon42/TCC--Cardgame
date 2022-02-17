/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if(position_meeting(mouse_x, mouse_y, self)){
		con_client.player.create_project = true;
		instance_create_depth(0, 0, -1, obj_create_class_menu);
		
		//scr_debug_hand();
	}
}