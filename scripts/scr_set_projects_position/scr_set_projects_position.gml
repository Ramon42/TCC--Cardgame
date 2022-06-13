// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_projects_position(_projects_list){
	var aux_p = 0;
	var aux_o = 0;
	var _length = array_length(_projects_list);
	var aux_project_list_player = [];
	for (var row = 0; row < _length ; row++){
		if (instance_exists(_projects_list[row, 2])){
			_projects_list[row, 2].image_xscale = 0.5;
			_projects_list[row, 2].image_yscale = 0.5;
			/*
			if (con_client.server_socket == _projects_list[row, 0]){ //checa se o projeto pertence a este jogador
				array_push(aux_project_list_player, _projects_list[row]);
				if (aux_p mod 2 == 0) { //todo esse rolo só pra organizar os projetos
					_projects_list[row, 2].x = 500;
					_projects_list[row, 2].y = ((100*(aux_p div 2))+800);
					aux_p++;
				}
				else {
					_projects_list[row, 2].x = 600;
					_projects_list[row, 2].y = ((100*((aux_p-1) div 2))+800);
					aux_p++;
				}
			}
			else{ //projetos do oponente
				if (aux_o mod 2 == 0) { //todo esse rolo só pra organizar os projetos
					_projects_list[row, 2].x = 500;
					_projects_list[row, 2].y = ((100*(aux_o div 2))+300);
					aux_o++;
				}
				else {
					_projects_list[row, 2].x = 600;
					_projects_list[row, 2].y = ((100*((aux_o-1) div 2))+300);
					aux_o++;
				}
			}
			*/
		}

	}
	con_client.player.player_projects = aux_project_list_player; //seta todos os projetos do player vindos do servidor
	con_client.player_proj = aux_project_list_player;
	show_debug_message("PLAYER.PLAYER_PROJECTS>>> ");
	for (var i=0; i<array_length(con_client.player.player_projects); i++)
	{show_debug_message(string(con_client.player.player_projects[i]))}
	show_debug_message("AUX PROJECT LIST PLAYER>>> ");
	for (var i=0; i<array_length(aux_project_list_player); i++)
	{show_debug_message(string(aux_project_list_player[i]))}
}