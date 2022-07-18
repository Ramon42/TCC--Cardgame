// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerstate_draw(){
	scr_draw_card_client(1);
	show_debug_message("INSTANCE LIST SIZE: " + string(array_length(con_client.instance_list)));
	con_client.player.state = PLAYERSTATE.MAIN_PHASE1;
}