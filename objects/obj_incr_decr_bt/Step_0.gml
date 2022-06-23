/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self)){
		self.sel = true;
		self.card = con_client.player.card_selected;
	}
	if (self.sel){
		for (var i = 0; i < array_length(con_client.instance_list); i++){
			if (position_meeting(mouse_x, mouse_y, con_client.instance_list[i, 2])){
				con_client.instance_list[i, 2].incr_decr = true;
				con_client.instance_list[i, 2].last_card = self.card;
				instance_destroy(self);
				break;
			}
		}	
	}
	if (position_meeting(mouse_x, mouse_y, obj_card)){
		instance_destroy(self);
	}
}