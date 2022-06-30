// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_heranca_servidor(_projeto, _id, _sock){
	var _size = array_length(con_server.projects_server);
	for (var i = 0; i < _size; i++){
		if (con_server.projects_server[i, 1] == _id){ //compara id do projeto armazenado com id recebido
			array_delete(con_server.projects_server, i, 1); //deleta o projeto antigo
			show_message("SUBCLASSE DELETADA NO SERVIDOR");
			break;
		}
	}
	
	_size = array_length(projects_server); //cria o projeto novo e atualizado
	projects_server[_size, 0] = _sock; //id do jogador
	projects_server[_size, 1] = _projeto.project_id; //id do projeto
	projects_server[_size, 2] = _projeto;
	scr_update_projects(_sock);
}