/// @description Insert description here
// You can write your code in this editor

draw_self();
for (i = 0; i < deck_size; i++){
	draw_sprite_ext(spr_cardback, -1, deck_x+0.2*i, deck_y-0.2*i, image_xscale, image_yscale, image_angle, c_white, 1);
}