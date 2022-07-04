// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_edit_project(_project, _sock){
	var _size = array_length(projects_server);
	for (var i = _size-1; i >= 0; i--){
		if (projects_server[i, 0] == _sock and projects_server[i, 1] == _project.project_id){ //compara id do projeto armazenado com id recebido
			array_delete(projects_server, i, 1); //deleta o projeto antigo
			show_message("PROJETO DELETADO NO SERVIDOR");
			break;
		}
	}
	_project.project_id = irandom_range(0, 1000);
	_size = array_length(projects_server); //cria o projeto novo e atualizado
	projects_server[_size, 0] = _sock; //id do jogador
	projects_server[_size, 1] = _project.project_id; //id do projeto
	projects_server[_size, 2] = _project;
	scr_update_projects(_sock);
	
}