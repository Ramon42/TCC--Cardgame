// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_debug_hand(){
	for (var i = 0; i < con_client.player.hand_size; i++){
		show_debug_message("///////////////");
		show_debug_message("ID: " + string(con_client.player.hand[|i].id));
		show_debug_message("TIPO: " + string(con_client.player.hand[|i].card_type));
		show_debug_message("SUBTIPO: " + string(con_client.player.hand[|i].card_subtype));
		show_debug_message("///////////////");
	}
}