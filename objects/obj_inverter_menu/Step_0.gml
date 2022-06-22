if (mouse_check_button_released(mb_left)){
	for (var i = 0; i < ds_list_size(self.var_list); i++){
		if (position_meeting(mouse_x, mouse_y, self.var_list[|i])){
			if (var1 == noone){
				self.var1 = self.var_list[|i];
				self.var1.highlight = true;
				break;
			}
			else if (var1 != self.var_list[|i]){
				self.var2 = self.var_list[|i];
				self.var2.highlight = true;
				break;
			}
		}
	}
	if(self.var1 != noone and self.var2 != noone){
		self.save_bt = instance_create_depth(self.x + self.x/4, self.y + self.y/4, -4, obj_inverter_bt);
		if (position_meeting(mouse_x, mouse_y, self.var1)){
			self.var1.highlight = false;
			instance_destroy(self.var1);
			self.var1 = noone;
			instance_destroy(self.save_bt);
		}
		if (position_meeting(mouse_x, mouse_y, self.var2)){
			self.var2.highlight = false;
			instance_destroy(self.var2);
			self.var2 = noone;
			instance_destroy(self.save_bt);
		}
	}
	if (position_meeting(mouse_x, mouse_y, self.save_bt)){
		scr_send_inverter(self.robo, self.var1.card_subtype, self.var2.card_subtype);
	}
}