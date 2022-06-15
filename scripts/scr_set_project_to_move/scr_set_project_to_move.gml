// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_project_to_move(){ //organiza projetos para o usuário mover variaveis
	var _size = array_length(con_client.player.player_projects);
	for (var row = 0; row < _size; row++){
		if (con_client.player.player_projects[row, 2].id != obj_edit_project_menu.projeto.id){ //não atualiza a pos do projeto selecionado
			//scr_move_layer_up(con_client.player.player_projects[row, 2]);
			con_client.player.player_projects[row, 2].x = con_client.player.move_projects_pos[_size, 0];
			con_client.player.player_projects[row, 2].y = con_client.player.move_projects_pos[_size, 1];
		}
	}
}