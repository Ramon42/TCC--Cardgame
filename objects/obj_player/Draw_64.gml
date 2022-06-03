/// @description Insert description here
// You can write your code in this editor

if (!is_local) { exit; }
draw_text(room_width/4, 50, "CARTAS NA MAO: " + string(hand_size));
draw_text(room_width/4, 80, "FASE DO TURNO: " + string(state));

var _pc, _lf_w, _lf_h;
_pc = (self.vida_atual / self.vida_max) * 100;
_lf_w = string_width(self.vida_atual);
_lf_h = string_height(self.vida_atual);
draw_healthbar(650, 1030, 850, 1060, _pc, c_black, c_red, c_lime, 0, true, true);

draw_text((750 - (_lf_w/2)), (1045 - (_lf_h/2)), string(self.vida_atual));

if(card_selected != noone and instance_exists(card_selected)){
	draw_text(room_width/4, 110, "CARTA SELECIONADA: " + sprite_get_name(card_selected.sprite_index) + " - " + string(card_selected.card_type));
	
}


