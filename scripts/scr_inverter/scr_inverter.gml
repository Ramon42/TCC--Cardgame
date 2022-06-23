// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inverter( _obj_id, _update){
	var _load = json_parse(_update);
	for (var i = 0; i < array_length(con_client.instance_list); i++){
		if (con_client.instance_list[i, 2].inst_id == _obj_id){
			with(con_client.instance_list[i, 2]){
				sprite_list = _load.sprite_list;
				forca_var = _load.forca_var;
				forca_cons =  _load.forca_cons;
				escudo_var =  _load.escudo_var;
				escudo_cons =  _load.escudo_cons;
				energia =  _load.energia;
				voo = _load.voo;
				atacar_1 = _load.atacar_1;
				atacar_2 = _load.atacar_2;
				refletir = _load.refletir;
				defender = _load.defender;
				explodir = _load.explodir;
				inverter = _load.inverter;
				agrupar_atacar = _load.agrupar_atacar;
				destruir_arma = _load.destruir_arma;
				usar_arma = _load.usar_arma;
				voar = _load.voar;
			}
			show_message("NOVA FORÇA> " + string(con_client.instance_list[i, 2].forca_var));
			show_message("INSTANCE LIST LENGTH> " + string(array_length(con_client.instance_list)));
			break;
		}
	}
}