// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerstate_main1(){
	if (mouse_check_button_released(mb_left)){
		
		
		scr_get_card();
		
		if (position_meeting(mouse_x, mouse_y, obj_advance_turn_phase_bt)){
			con_client.player.state = PLAYERSTATE.BATTLE_PHASE;
		}
		
		
	}
}