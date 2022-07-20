/// @description Insert description here
// You can write your code in this editor

draw_self();
var _lf_w, _lf_h, _str;
if (con_client.player != noone){
	switch(con_client.player.state){
		case PLAYERSTATE.MAIN_PHASE1:
			_str = "FASE DE CRIAÇÃO";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(814-(_lf_w/2), 607-(_lf_h/2), _str);
		break;
	
		case PLAYERSTATE.BATTLE_PHASE:
			_str = "FASE DE MÉTODOS";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(814-(_lf_w/2), 607-(_lf_h/2), _str);
		break;
	
		case PLAYERSTATE.MAIN_PHASE2:
			_str = "FASE DE CRIAÇÃO";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(814-(_lf_w/2), 607-(_lf_h/2), _str);
		break;
	
		case PLAYERSTATE.ENEMY_TURN:
			_str = "TURNO DO OPONENTE";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(814-(_lf_w/2), 607-(_lf_h/2), _str);
		break;
		
		case PLAYERSTATE.DRAW_PHASE:
			_str = "FASE DE COMPRA";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(814-(_lf_w/2), 607-(_lf_h/2), _str);
		break;
		
		case PLAYERSTATE.END_PHASE:
			_str = "FASE FINAL";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(814-(_lf_w/2), 607-(_lf_h/2), _str);
		break;
	}
}