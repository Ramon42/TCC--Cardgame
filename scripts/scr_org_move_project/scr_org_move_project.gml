// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_org_move_project(){
	var _aux_col = 0;
	var _aux_lin = 0;
	show_debug_message("PROJETOS EM MOVE CARD")
	for (var i = 0; i < array_length(con_client.player_proj); i++){
		show_debug_message(string(con_client.player_proj[i]));
		if(_aux_col < 3){

			_aux_col++;
		}
		else{
			_aux_lin ++;
			_aux_col = 0;
		}
	}
}