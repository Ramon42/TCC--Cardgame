/// @description Insert description here
// You can write your code in this editor

/*
var startX = (global.rm_width / 2) - (sprite_get_width(spr_slider) / 2);
var startY = (global.rm_height / 2) - (sprite_get_height(spr_slider_bar) * 3);


draw_sprite(spr_slider, 0, startX, startY);

var perc = (a_info[0, e_info.selected] / a_info[0, e_info.total]);

var slider_barX = startX + (sprite_get_width(spr_slider) * perc);
show_message("ENTROU AQUI DO DRAY GUI");
if (abs(device_mouse_y_to_gui(0) - startY) < (sprite_get_height(spr_slider_bar)/2) and device_mouse_x_to_gui(0) <= startX + sprite_get_width(spr_slider)){
	if (mouse_check_button(mb_left)){
		mouseX = device_mouse_x_to_gui(0);
		indicatorLength = (mouseX - startX);
		
		perc = (indicatorLength / sprite_get_width(spr_slider)) * 100;
		a_info[0, e_info.selected] = round((a_info[0, e_info.total] / 100) * perc);
		
		var perc = (a_info[0, e_info.selected] / a_info[0, e_info.total]);
		slider_barX = startX + (sprite_get_width(spr_slider) * perc);
	}
	show_message("ENTROU AQUI DO DRAY GUI 2 ");
}

draw_sprite(spr_slider_bar, 0, slider_barX, startY);
draw_text(startX + sprite_get_width(spr_slider), startY, " Selecionado: " + string(a_info[0, e_info.selected]) + " / " +  string(a_info[0, e_info.total]));
show_message("ENTROU AQUI DO DRAY GUI 3");
*/

draw_text((room_width/2) + sprite_get_width(spr_slider), (room_height/2), " Selecionado: " + string(self.slider.amount_current) + " / " +  string(self.slider.max_value));