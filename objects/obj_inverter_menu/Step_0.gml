if (mouse_check_button_released(mb_left)){
	for (var i = 0; i < ds_list_size(self.var_list); i++){
		if (position_meeting(mouse_x, mouse_y, self.var_list[|i])){
			if (var1 == noone){
				self.var1 = position_meeting(mouse_x, mouse_y, self.var_list[|i]);
			}
			else if (var1 != self.var_list[|i]){
				self.var2 = position_meeting(mouse_x, mouse_y, self.var_list[|i]);
				break;
			}
		}
	}
	if(self.var1 != noone and self.var2 != noone){
		_save = instance_create_depth(self.x + self.x/4, self.y + self.y/4, -4, obj_move_card_bt);
	}
}