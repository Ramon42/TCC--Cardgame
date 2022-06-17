/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, cancel_move_bt)){
		scr_set_projects_position(con_client.project_list);
		self.project.x = obj_edit_project_menu.col4;
		self.project.y = obj_edit_project_menu.lin3;
		self.project.depth = -3;
		self.project.image_xscale = 1.75;
		self.project.image_yscale = 1.75;
		obj_edit_project_menu.moving_card = false;
		instance_destroy(cancel_move_bt);
		instance_destroy(self);
	}
}