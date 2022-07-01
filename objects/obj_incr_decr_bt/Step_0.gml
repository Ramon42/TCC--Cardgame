/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self)){
		var _dica = instance_create_depth(0, 0, 0, obj_dicas_menu);
		_dica.text = "Selecione a classe alvo!";
		self.sel = true;
		self.card = con_client.player.card_selected;
	}
	if (self.sel){
		for (var i = 0; i < array_length(con_client.project_list); i++){
			if (position_meeting(mouse_x, mouse_y, con_client.project_list[i, 2])){
				con_client.project_list[i, 2].incr_decr = true;
				con_client.project_list[i, 2].last_card = self.card;
				self.del_pos = ds_list_find_index(con_client.player.hand, self.card);
				con_client.project_list[i, 2].del_card_in_hand = self.del_pos;
				break;
			}
		}
	}
	if (position_meeting(mouse_x, mouse_y, obj_card) and !self.sel){
		instance_destroy(self);
	}
}