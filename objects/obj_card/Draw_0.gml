/// @description Insert description here
// You can write your code in this editor

draw_self();

if (self.highlight){
	draw_sprite_ext(spr_card_highlight, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);
	show_debug_message("HIGHLIGHT CARD");
}