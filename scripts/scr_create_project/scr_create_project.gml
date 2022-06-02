// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_project(_project, _sock){ //lado do servidor
	show_message("PROJETO RECEBIDO: " + string(_project));
	
	var _size = array_length(projects_server);
	show_message("ARRAY LENGTH CREATE> " + string(_size));
	projects_server[_size, 0] = _sock; //id do jogador
	projects_server[_size, 1] = _project.project_id; //id do projeto
	projects_server[_size, 2] = _project;
	
	
	scr_update_projects(_sock);
	//array_push(projects_server, _project);
	
	/*
	var _inst = instance_create_layer(600, 600,  "Instances", obj_projeto); //mudar isso, o servidor 
	//não pode criar uma instancia do projeto, pq ela vai pro cliente que ta hosteando tb
	with (_inst){
		obj_list = _project.obj_list;
		image_xscale = _project.image_xscale;
		image_yscale = _project.image_yscale;
		player_socket = _sock;
		forca_var = _project.forca_var;
		forca_cons = _project.forca_cons;
		escudo_var = _project.escudo_var;
		escudo_cons = _project.escudo_cons;
		energia_var = _project.energia_var;
		energia_cons = _project.energia_cons;
		voo = _project.voo;
	}
	array_push(projects, _inst);
	*/
}