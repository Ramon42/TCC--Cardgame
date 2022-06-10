// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calculate_dmg(_atk_id, _def_id, _sock, _sock_op){
	var _atk;
	var _def;
	var _dmg;
	var _escudo;
	var _dmg_refletir = 0;
	
	for (var i = 0; i < array_length(con_server.instances_server); i++){
		if(con_server.instances_server[i, 2].inst_id == _atk_id) { _atk = con_server.instances_server[i, 2]; }
		else if (con_server.instances_server[i, 2].inst_id == _def_id) { _def = con_server.instances_server[i, 2]; }
	}
	
	if (_atk.forca_var > _atk.forca_cons) { _dmg = _atk.forca_var; } 
	else { _dmg = _atk.forca_cons; }
	if (_def.escudo_var > _def.escudo_cons) { _escudo = _def.escudo_var; } 
	else { _escudo = _def.escudo_cons; }
	
	if (_def.defender){
		//caso o alvo tenha o metodo defender, ele absorve dano = seu escudo
		_dmg = _dmg - _escudo;
	}
	if (_def.refletir){
		_dmg_refletir = _escudo + _def.energia;
		_atk.energia -= _dmg_refletir;
	}
	if (_dmg > 0){ _def.energia -= _dmg; } //só realiza o dano caso ele seja maior que 0 (caso contrário receberia dano negativo)
	scr_update_projects_energy(_sock, _sock_op);
}