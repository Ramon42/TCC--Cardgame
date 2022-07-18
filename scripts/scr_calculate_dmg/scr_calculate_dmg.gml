// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calculate_dmg(_atk_id, _def_id, _sock, _sock_op, _bloq, _dmg){
	var _atk;
	var _def;
	var _escudo;
	var _dmg_refletir = 0;
	
	for (var i = 0; i < array_length(con_server.instances_server); i++){
		if(con_server.instances_server[i, 2].inst_id == _atk_id) { _atk = con_server.instances_server[i, 2]; }
		else if (con_server.instances_server[i, 2].inst_id == _def_id) { _def = con_server.instances_server[i, 2]; }
	}
	
	if (_def.escudo_var > _def.escudo_cons) { _escudo = _def.escudo_var; } 
	else { _escudo = _def.escudo_cons; }
	
	if (_def.defender and _bloq){
		//caso o alvo tenha o metodo defender, ele absorve dano = seu escudo
		_dmg = _dmg - _escudo;
	}
	if (_def.refletir and _bloq){
		_dmg_refletir = _escudo + _def.energia;
		_atk.energia -= _dmg_refletir;
	}
	if (_dmg > 0){ _def.energia -= _dmg; } //só realiza o dano caso ele seja maior que 0 (caso contrário receberia dano negativo)
	//show_message("SERVIDOR ENVIANDO UPDATE DE ENERGIA");
	scr_update_projects_energy(_sock, _sock_op);
}