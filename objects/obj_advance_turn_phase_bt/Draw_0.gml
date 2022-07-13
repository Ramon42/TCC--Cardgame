/// @description Insert description here
// You can write your code in this editor

draw_self();
var _lf_w, _lf_h, _str;
if (con_client.player != noone){
	switch(con_client.player.state){
		case PLAYERSTATE.MAIN_PHASE1:
			_str = "PRINCIPAL";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(x-(_lf_w/2), y-(_lf_h/2), _str);
		break;
	
		case PLAYERSTATE.BATTLE_PHASE:
			_str = "BATALHA";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(x-(sprite_width/4), y-(_lf_h/2), _str);
		break;
	
		case PLAYERSTATE.MAIN_PHASE2:
			_str = "PRINCIPAL";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(x-(sprite_width/4), y-(_lf_h/2), _str);
		break;
	
		case PLAYERSTATE.ENEMY_TURN:
			_str = "INIMIGO";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(x-(_lf_w/2), y-(_lf_h/2), _str);
		break;
		
		case PLAYERSTATE.DRAW_PHASE:
			_str = "COMPRA";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(x-(_lf_w/2), y-(_lf_h/2), _str);
		break;
		
		case PLAYERSTATE.END_PHASE:
			_str = "FIM";
			_lf_w = string_width(_str);
			_lf_h = string_height(_str);
			draw_text(x-(_lf_w/2), y-(_lf_h/2), _str);
		break;
	}
}