/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left)){
	var button_y = y;
	var button_radius = sprite_get_width(spr_slider_bar)/2;
	if (point_in_circle(mouse_x, mouse_y, self.knob_position_x, button_y, button_radius)){
		self.selected = true;
	}
}

if(!mouse_check_button(mb_left)) {
	self.selected = false;
}
if (self.selected){
	if(mouse_x > x){
		var xx = abs(x - mouse_x);
		var amount = xx / sprite_width;
	
		amount = clamp(amount, 0, 1);
		self.amount_current = round(amount * self.max_value);
		
	}
	else {self.amount_current = 0;}
}
