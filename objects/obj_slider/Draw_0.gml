/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_sprite(sprite_index, image_index, x, y);

var knob_amount = self.amount_current / self.max_value;
self.knob_position_x = x + (sprite_width * knob_amount);

draw_sprite(spr_slider_bar, 0, knob_position_x, y);
