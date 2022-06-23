// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_att_client_project_list(_project_list, _client_projects){
	var _array = json_parse(_project_list);
	for (var row = 0; row < array_length(_array); row ++){
		for (var i = 0; i < array_length(_client_projects); i++){
			if (_array[row,0] == _client_projects[i,0] and _array[row,1] == _client_projects[i,1]){
				var _load = _array[row, 2];
				with (_client_projects[i, 2]){
					sprite_list = _load.sprite_list;
					player_socket = _load.player_socket;
					project_id = _load.project_id;
					forca_var = _load.forca_var;
					forca_cons = _load.forca_cons;
					escudo_var = _load.escudo_var;
					escudo_cons = _load.escudo_cons;
					energia = _load.energia;
					voo = _load.voo;
					atacar_1 = _load.atacar_1;
					atacar_2 = _load.atacar_2;
					refletir = _load.refletir;
					defender = _load.defender;
					explodir = _load.explodir;
					inverter = _load.inverter;
					agrupar_atacar = _load.agrupar_atacar;
					destruir_arma = _load.destruir_arma;
					voar = _load.voar;
				}
			}
		}
	}
}