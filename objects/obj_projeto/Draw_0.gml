/// @description Insert description here
// You can write your code in this editor

self.show_text = "Projeto: \n \n";

if (instance_position(mouse_x, mouse_y, self)){
	draw_sprite_ext(spr_card_highlight, 0, self.x, self.y, self.image_xscale, self.image_yscale, 0, c_white, 0.8);
}

draw_self();

if (forca_var > 0){
	draw_text(col, lin_for, "-int Força = " + string(forca_var));
	self.show_text = self.show_text + "-int Força = " + string(forca_var) + "\n";
}

if (escudo_var > 0){
	draw_text(col, lin_esc, "-int Escudo = " + string(escudo_var));
	self.show_text = self.show_text + "-int Escudo = " + string(escudo_var) + "\n";
}
if (energia > 0){
	draw_text(col, lin_eng, "-int Energia = " + string(energia));
	self.show_text = self.show_text + "-int Energia = " + string(energia) + "\n";
}
if (voo != noone){
	draw_text(col, lin_voo, "-bool Voo = " + string(voo));
	self.show_text = self.show_text + "-bool Voo = " + string(voo) + "\n";
}


if (self.selected){
	draw_text_ext(50, 400, self.show_text, 30, 300);
}
