// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_projects_position(_projects_list){
	var _aux_p = 0;
	var _aux_o = 0;
	var _aux_sup_p = 0;
	var _aux_sup_o = 0;
	var _length = array_length(_projects_list);
	var aux_project_list_player = [];
	
	for (var row = 0; row < _length; row++){
		if (instance_exists(_projects_list[row, 2])){
			_projects_list[row, 2].depth = 0;
			_projects_list[row, 2].image_xscale = 0.5;
			_projects_list[row, 2].image_yscale = 0.5;
			if (con_client.server_socket == _projects_list[row, 0]){
				//checa se o projeto pertence a este jogador
				array_push(aux_project_list_player, _projects_list[row]);
				if (!_projects_list[row, 2].abstract){
					_projects_list[row, 2].x = con_client.player.p_projects_pos[_aux_p, 0];
					_projects_list[row, 2].y = con_client.player.p_projects_pos[_aux_p, 1];
					_aux_p ++;
				}
				else{
					_projects_list[row, 2].x = con_client.player.p_superclass_pos[_aux_sup_p, 0];
					_projects_list[row, 2].y = con_client.player.p_superclass_pos[_aux_sup_p, 1];
					_aux_sup_p ++;
				}
			}
			else{ //projetos do oponente
				if (!_projects_list[row, 2].abstract){
					_projects_list[row, 2].x = con_client.player.op_projects_pos[_aux_o, 0];
					_projects_list[row, 2].y = con_client.player.op_projects_pos[_aux_o, 1];
					_aux_o ++;
				}
				else{
					_projects_list[row, 2].x = con_client.player.op_superclass_pos[_aux_sup_o, 0];
					_projects_list[row, 2].y = con_client.player.op_superclass_pos[_aux_sup_o, 1];
					_aux_sup_o ++;
				}
			}
		}

	}
	con_client.player.player_projects = aux_project_list_player; //seta todos os projetos do player vindos do servidor
	con_client.player_proj = aux_project_list_player;
}