// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_explode(_obj1_id, _obj2_id){
	for (var i = 0; i < array_length(con_client.instance_list); i++){
		if (_obj1_id == con_client.instance_list[i, 2].inst_id){
			instance_destroy(con_client.instance_list[i, 2]);
			array_delete(con_client.instance_list, i, 1);
			break;
		}
	}
	for (var i = 0; i < array_length(con_client.instance_list); i++){
		if (_obj2_id == con_client.instance_list[i, 2].inst_id){
			instance_destroy(con_client.instance_list[i, 2]);
			array_delete(con_client.instance_list, i, 1);
			break;
		}
	}
}