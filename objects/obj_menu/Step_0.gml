/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_down)){menu_index ++;}
else if (keyboard_check_pressed(vk_up)){menu_index --;}

menu_index = clamp(menu_index, 0, array_length_1d(menu)-1);

if (keyboard_check_pressed(vk_enter)){
	switch(menu_index){
		case 0:
			//instance_create_layer(0, 0, "Instances", con_server);
			scr_con_client_create("127.0.0.1");
			scr_room(rm_game);
			break;
			
		case 1:
			scr_room(rm_game);
			scr_con_client_create("127.0.0.1");
			break;
			
		case 2:
			scr_room(rm_search_host);
			break;
		
		case 3:
			scr_room(rm_config);
			break;
			
		case 4:
			game_end();
	}
}