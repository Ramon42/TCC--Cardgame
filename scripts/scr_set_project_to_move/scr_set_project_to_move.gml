// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_project_to_move(){ //organiza projetos para o usuário mover variaveis
	var aux = 0;
	for (var row = 0; row<array_length(con_client.player.player_projects); row++){
		if (con_client.player.player_projects[row, 2].id != obj_edit_project_menu.projeto.id){ //não atualiza a pos do projeto selecionado
			scr_move_layer_up(con_client.player.player_projects[row, 2]);
			if (aux mod 2 == 0) { //coluna 1
				con_client.player.player_projects[row, 2].x = ((100*(aux div 2))+100);
				con_client.player.player_projects[row, 2].y = 100;
			}
			else { //coluna 2
				con_client.player.player_projects[row, 2].x = ((100*((aux-1) div 2))+100);
				con_client.player.player_projects[row, 2].y = 200;
			}
			aux++;
		}
	}
}