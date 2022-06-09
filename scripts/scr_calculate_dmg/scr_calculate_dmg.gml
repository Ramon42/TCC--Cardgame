// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calculate_dmg(_atk_id, _def_id){
	var _atk;
	var _def;
	var _dmg;
	
	for (var i = 0; i < array_length(con_server.instances_server); i++){
		if(con_server.instances_server[i, 2].inst_id == _atk_id) { _atk = con_server.instances_server[i, 2]; }
		else if (con_server.instances_server[i, 2].inst_id == _def_id) { _def = con_server.instances_server[i, 2]; }
	}
	if (_atk.forca_var > _atk.forca_cons) { _dmg = _atk.forca_var; } 
	else { _dmg = _atk.forca_cons; }
	_def.energia -= _dmg;
}