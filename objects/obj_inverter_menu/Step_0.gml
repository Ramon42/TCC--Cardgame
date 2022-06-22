if (mouse_check_button_released(mb_left)){
	var _del = false;
	if(self.var1 != noone){
		if (position_meeting(mouse_x, mouse_y, self.var1)){
			self.var1.highlight = false;
			self.var1 = noone;
			_del = true;
		}
	}
	if (self.var2 != noone){
		if (position_meeting(mouse_x, mouse_y, self.var2)){
			self.var2.highlight = false;
			self.var2 = noone;
			_del = true;
		}
	}
	
	for (var i = 0; i < ds_list_size(self.var_list); i++){
		if (position_meeting(mouse_x, mouse_y, self.var_list[|i]) and !_del){
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
	
	if (position_meeting(mouse_x, mouse_y, self.save_bt) and self.var1 != noone and self.var2 != noone){
		scr_send_inverter(self.robo, self.var1.card_subtype, self.var2.card_subtype);
		instance_destroy(self.save_bt);
		self.var1 = noone;
		self.var2 = noone;
		for (var i = 0; i < ds_list_size(self.var_list); i++){
			instance_destroy(self.var_list[|i]);
		}
		instance_destroy(self);
	}
}