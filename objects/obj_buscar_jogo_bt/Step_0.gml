/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_released(mb_left)){
	if(position_meeting(mouse_x, mouse_y, self)){
		scr_room(rm_search_host);
	}
}
