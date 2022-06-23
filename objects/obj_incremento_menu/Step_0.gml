/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_released(mb_left)){
	var _del = false;
	if(self.var1 != noone){
		if (position_meeting(mouse_x, mouse_y, self.var1)){
			self.var1.highlight = false;
			self.var1 = noone;
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
		}
	}
	
	if (position_meeting(mouse_x, mouse_y, self.save_bt) and self.var1 != noone){
		scr_send_incremento(self.robo, self.var1.card_subtype, self.incremento.card_subtype);
		instance_destroy(self.save_bt);
		self.var1 = noone;
		for (var i = 0; i < ds_list_size(self.var_list); i++){
			instance_destroy(self.var_list[|i]);
		}
		var _pos = ds_list_find_index(con_client.player.hand, self.incremento);
		ds_list_delete(con_client.player.hand, _pos);
		instance_destroy(self);
	}
}