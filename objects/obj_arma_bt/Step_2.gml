/// @description Insert description here
// You can write your code in this editor

if (con_client.player.state != PLAYERSTATE.MAIN_PHASE1 and con_client.player.state != PLAYERSTATE.MAIN_PHASE2){
	instance_destroy(self);
}

if (mouse_check_button_released(mb_left)){
	if (!position_meeting(mouse_x, mouse_y, self)){
		instance_destroy(self);
	}
	if (position_meeting(mouse_x, mouse_y, self)){
		
	}
}