// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//checa se o projeto de origem nas instancias ainda existe, se ele não existir então deve destruir os objetos
function scr_check_instance_project(){
	
	if (array_length(con_client.instance_list) > 0){
		for (var o = 0; o < array_length(con_client.instance_list); o++){
			var _find = false;
			for (var i = 0; i < array_length(con_client.project_list); i++){
				if (con_client.project_list[i, 1] == con_client.instance_list[o, 2].inst_proj_id){
					_find = true;
					break;
				}
			}
			if (!_find){
				show_message("PROJETO NÃO ENCONTRADO, DELETANDO DO SERVIDOR");
				instance_destroy(con_client.instance_list[o, 2]);
				array_delete(con_client.instance_list, o, 1);
			}
		}
	}
}