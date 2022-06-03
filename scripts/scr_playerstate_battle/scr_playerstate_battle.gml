// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerstate_battle(){
	var _dmg = 0;
	if (mouse_check_button_released(mb_left)){
		_dmg += 1;
		
		if (position_meeting(mouse_x, mouse_y, obj_card)){ 
			scr_get_card();
		}
		
		if (position_meeting(mouse_x, mouse_y, obj_advance_turn_phase_bt)){
			con_client.player.state = PLAYERSTATE.MAIN_PHASE2;
		}
		
	}
	
	if (_dmg > 0) { scr_send_damage(_dmg); }
}