/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_down)){config_menu_index ++;}
else if (keyboard_check_pressed(vk_up)){config_menu_index --;}

config_menu_index = clamp(config_menu_index, 0, array_length_1d(config_menu)-1);

if (keyboard_check_pressed(vk_enter)){
	switch(config_menu_index){
		case 0:
			global.rm_width = 1280;
			global.rm_height = 720;
			break;
			
		case 1:
			global.rm_width = 1600;
			global.rm_height = 900;
			break;
		
		case 2:
			global.rm_width = 1920;
			global.rm_height = 1080;
			break;
			
		case 3:
			if (global.fullscreen){
				global.fullscreen = false;
				window_set_fullscreen(global.fullscreen);
			}
			else{
				global.fullscreen = true;
				window_set_fullscreen(global.fullscreen);
			}
			break;
			
		case 4: 
			scr_room(global.previous_room);
			break;
	}
}