/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_text(room_width/2, 56, "RESOLUÇÃO");
for ( var i = 0; i < array_length(config_menu); i++){
	draw_set_color(config_menu_index==i?c_green:c_white);
	draw_text(room_width/2, 100+33*i, config_menu[i]);
}
draw_set_halign(fa_left);