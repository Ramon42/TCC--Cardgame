/// @description Insert description here
// You can write your code in this editor

if (!self.atk_path){
	self.atk_path = true;
	path_start(pth_test, 15, path_action_stop, true);
}

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self)){
		//caso o jogador clique na carta durante a fase de batalha
		show_message("ENTRA NO ROBO SHINJI");
		self.selected = true;
		con_client.player.card_selected = noone;
		with(obj_card_preview){ instance_destroy(); }
		instance_destroy(obj_action_bt_parent);
		
		if (self.atacar_1){
			//caso possa usar o método atacar_1
			show_message("STARTANDO PATH");
			self.atk_path = false;
		}
	}
	
	if (!position_meeting(mouse_x, mouse_y, self)){
		self.selected = false;
	}
}