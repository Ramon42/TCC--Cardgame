/// @description Insert description here
// You can write your code in this editor

if (!is_local) { exit; }
draw_text(room_width/1.5, 50, "CARTAS NA MAO OPONENTE: " + string(hand_size_op));

var _pc, _str, _lf_w, _lf_h;
_pc = (self.vida_atual / self.vida_max) * 100;
_str = "VIDA: " + string(self.vida_atual);
_lf_w = string_width(_str);
_lf_h = string_height(_str);
draw_healthbar(700, 20, 900, 50, _pc, c_black, c_red, c_lime, 0, true, true);

draw_text((800 - (_lf_w/2)), (35 - (_lf_h/2)), _str);

if(card_selected != noone){
	draw_text(room_width/1.5, 100, "CARTA SELECIONADA OPONENTE: " + sprite_get_name(card_selected.sprite_index));
}