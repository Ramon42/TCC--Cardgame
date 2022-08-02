/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_released(mb_left)){
	if(position_meeting(mouse_x, mouse_y, self)){
		instance_create_layer(0, 0, "Instances", con_server);
		scr_con_client_create("127.0.0.1", 8080);
		scr_room(rm_game);
	}
}
