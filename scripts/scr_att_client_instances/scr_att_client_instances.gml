// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_att_client_instances(_instance_list){
	var _array = json_parse(_instance_list);
	for (var i = 0; i < array_length(_array); i++){
		for (var o = 0; o < array_length(con_client.instance_list); o++){
			if (_array[i,0] == con_client.instance_list[o,0] and _array[i,1] == con_client.instance_list[o,1]){
				var _load = _array[i, 2];
				with (con_client.instance_list[o, 2]){
					energia = _load.energia;
					forca_var = _load.forca_var;
					forca_cons = _load.forca_cons;
					escudo_var = _load.escudo_var;
					escudo_cons = _load.escudo_cons;
					voo = _load.voo;
				}
				show_message("NOVA ENERGIA> " + string(con_client.instance_list[o,2].energia));
			}
		}
	}
}