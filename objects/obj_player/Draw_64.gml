/// @description Insert description here
// You can write your code in this editor

if (!is_local) { exit; }

var _pc, _lf_w, _lf_h, _str;
_pc = (self.vida_atual / self.vida_max) * 100;
_str = "ENERGIA: " + string(self.vida_atual);
_lf_w = string_width(_str);
_lf_h = string_height(_str);
draw_healthbar(700, 1030, 900, 1060, _pc, c_black, c_red, c_lime, 0, true, true);

draw_text((800 - (_lf_w/2)), (1045 - (_lf_h/2)), _str);
