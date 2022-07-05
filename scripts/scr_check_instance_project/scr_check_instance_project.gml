// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//checa se o projeto de origem nas instancias ainda existe, se ele não existir então deve destruir os objetos
function scr_check_instance_project(){
	var _del = array_create(0);
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
				array_push(_del, o);
			}
		}
		for (var r = array_length(_del)-1; r >= 0; r--){
			instance_destroy(con_client.instance_list[_del[r], 2]);
			array_delete(con_client.instance_list, _del[r], 1);
		}
	}
}