/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_released(mb_left)){
	if(position_meeting(mouse_x, mouse_y, self)){
		self.selected = true;
	}
	else { self.selected = false; }
}

if (self.selected){
	if (string_length(keyboard_string)<limit) 
	    message = keyboard_string;
	else
	    keyboard_string = message;
}