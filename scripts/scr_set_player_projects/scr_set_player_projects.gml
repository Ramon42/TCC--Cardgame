// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_player_projects(_projects_list){
	if (instance_exists(con_client)){
		var _length = array_length(_projects_list);
		var aux_project_list_player = [];
		for (var row = 0; row < _length ; row++){
			if (instance_exists(_projects_list[row, 2])){
				if (con_client.server_socket == _projects_list[row, 0]){ //checa se o projeto pertence a este jogador
					array_push(aux_project_list_player, _projects_list[row]);
				}

			}

		}
		con_client.player.player_projects = aux_project_list_player; //seta todos os projetos do player vindos do servidor
		con_client.player_proj = aux_project_list_player;
	}
}