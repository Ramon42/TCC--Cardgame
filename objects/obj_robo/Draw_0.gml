/// @description Insert description here
// You can write your code in this editor

if (instance_position(mouse_x, mouse_y, self)){
	draw_sprite_ext(spr_card_highlight, 0, self.x, self.y, self.image_xscale, self.image_yscale, 0, c_white, 0.8);
}

draw_self();

if (self.selected or self.attacking){
	draw_sprite_ext(spr_card_highlight_atk, 0, self.x, self.y, self.image_xscale, self.image_yscale, 0, c_white, 0.8);
}

if (self.defending){
	draw_sprite_ext(spr_card_highlight_def, 0, self.x, self.y, self.image_xscale, self.image_yscale, 0, c_white, 0.8);
}

if (forca_var != -1){
	draw_text(col, lin_for, "-int Força = " + string(forca_var));
}

if (escudo_var != -1){
	draw_text(col, lin_esc, "-int Escudo = " + string(escudo_var));
}