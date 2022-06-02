// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reset_project_value(_projeto){ //reseta todos os atributos do projeto para -1
	_projeto.forca_var = -1;
	ds_map_set(_projeto.attributes_map, "forca_v", -1);
	_projeto.energia_var = -1;
	ds_map_set(_projeto.attributes_map, "energia_v", -1);
	projeto.escudo_var = -1;
	ds_map_set(_projeto.attributes_map, "escudo_v", -1);
	_projeto.voo = false;
	_projeto.forca_cons = -1;
	ds_map_set(_projeto.attributes_map, "forca_c", -1);
	_projeto.energia_cons = -1;
	ds_map_set(_projeto.attributes_map, "energia_c", -1);
	_projeto.escudo_cons = -1;
	ds_map_set(_projeto.attributes_map, "escudo_c", -1);
}
