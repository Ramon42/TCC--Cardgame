/// @description Insert description here
// You can write your code in this editor

self.slider.amount_max = max_dmg;


if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self.atacar_bt)){
		scr_send_atk(self.menu_list[0, 0], self.menu_list[0, 1], self.slider.amount_current);
		self.menu_list[0, 0].dmg_rest = self.max_dmg - self.slider.amount_current;
		show_message("ATAQUE 2 ENVIADO");
		instance_destroy(self.atacar_bt);
		instance_destroy(self.slider);
		instance_destroy(self);
	}
}


