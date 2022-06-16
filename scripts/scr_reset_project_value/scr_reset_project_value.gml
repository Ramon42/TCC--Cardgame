// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reset_project_value(_projeto){ //reseta todos os atributos do projeto para 0
	_projeto.forca_var = 0;
	ds_map_set(_projeto.attributes_map, "forca_v", 0);
	_projeto.energia = 0;
	ds_map_set(_projeto.attributes_map, "energia_v", 0);
	projeto.escudo_var = 0;
	ds_map_set(_projeto.attributes_map, "escudo_v", 0);
	_projeto.voo = false;
	_projeto.forca_cons = 0;
	ds_map_set(_projeto.attributes_map, "forca_c", 0);
	_projeto.escudo_cons = 0;
	ds_map_set(_projeto.attributes_map, "escudo_c", 0);
	_projeto.atacar_1 = false;
	_projeto.atacar_2 = false;
	_projeto.defender = false;
	_projeto.refletir = false;
	_projeto.voar = false;
}
