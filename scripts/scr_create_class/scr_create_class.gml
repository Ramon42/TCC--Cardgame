// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_class(_class, _sock){
	show_message("CLASSE RECEBIDA: " + string(_class));
	var _size = array_length(classes_server);
	var _check = false;
	for (var i = 0; i < _size; i++){
		if (classes_server[i, 0] == _sock){ //jogador já tem uma carta de arma em campo, deve ser atualizada
			show_message("ATUALIZANDO CLASSE DO JOGADOR");
			_check = true;
			classes_server[i, 0] = _sock;
			classes_server[i, 1] = _size;
			classes_server[i, 2] = _class;
			break;
		}
	}
	if (!_check){
		_class.class_id = array_length(con_server.classes_server);
		classes_server[_size, 0] = _sock; //id do jogador
		classes_server[_size, 1] = _size; //id do projeto
		classes_server[_size, 2] = _class;
	}
	scr_update_class(_sock);
}