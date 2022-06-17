/// @description Insert description here
// You can write your code in this editor

if (!obj_edit_project_menu.moving_card){
	scr_set_projects_position(con_client.project_list);
	self.project.x = obj_edit_project_menu.col4;
	self.project.y = obj_edit_project_menu.lin3;
	self.project.depth = -3;
	self.project.image_xscale = 1.75;
	self.project.image_yscale = 1.75;
	instance_destroy(cancel_move_bt);
	instance_destroy(self);
	exit;
}