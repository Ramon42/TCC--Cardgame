/// @description Insert description here
// You can write your code in this editor


if(mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self.ok_bt)){
		if (self.endgame){
			game_end();
		}
		instance_destroy(self.ok_bt);
		instance_destroy(self);
	}
}