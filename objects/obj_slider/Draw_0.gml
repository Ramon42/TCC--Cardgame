/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, image_index, x, y);

var knob_amount = amount_current / amount_max;
var knob_position_x = x + (sprite_width * knob_amount);

draw_sprite(spr_slider_bar, is_being_dragged, knob_position_x, y);