// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_heranca(_superclasse, _subclasse){
	var _sprites = array_create(0);
	//criando uma classe com tudo que existe na superclasse
	var _save = {
		sprite_list : [],
		player_socket : con_client.server_socket,
		project_id : _superclasse.project_id,
		final : false,
		abstract : false,
		forca_var : _superclasse.forca_var,
		forca_cons : _superclasse.forca_cons,
		escudo_var : _superclasse.escudo_var,
		escudo_cons : _superclasse.escudo_cons,
		energia : _superclasse.energia,
		voo : _superclasse.voo,
		atacar_1 : _superclasse.atacar_1,
		atacar_2 : _superclasse.atacar_2,
		refletir : _superclasse.refletir,
		defender : _superclasse.defender,
		explodir : _superclasse.explodir,
		inverter : _superclasse.inverter,
		agrupar_atacar : _superclasse.agrupar_atacar,
		destruir_arma : _superclasse.destruir_arma,
		usar_arma : _superclasse.usar_arma,
		voar : _superclasse.voar
	};
	//agora sobreescrever o que foi criado na superclasse
	if (_subclasse.forca_var != 0){
		_save.forca_var = _subclasse.forca_var;
	}
	else if (_subclasse.forca_cons != 0){
		_save.forca_cons = _subclasse.forca_cons;
	}
	if (_subclasse.escudo_var != 0){
		_save.escudo_var = _subclasse.escudo_var;
	}
	else if (_subclasse.escudo_cons != 0){
		_save.escudo_cons = _subclasse.escudo_cons;
	}
	if (_subclasse.energia != 0){
		_save.energia = _subclasse.energia;
	}
	if (_save.voo == noone){
		_save.voo = _subclasse.voo;
		if (_subclasse.voo != noone){
			array_push(_sprites, spr_card_voo);
		}
	}
	if (!_save.atacar_1){
		_save.atacar_1 = _subclasse.atacar_1;
		if (_subclasse.atacar_1){
			array_push(_sprites, spr_card_atacar1);
		}
	}
	if (!_save.atacar_2){
		_save.atacar_2 = _subclasse.atacar_2;
		if (_subclasse.atacar_1){
			array_push(_sprites, spr_card_atacar2);
		}
	}
	if (!_save.refletir){
		_save.refletir = _subclasse.refletir;
		if (_subclasse.refletir){
			array_push(_sprites, spr_card_refletir);
		}
	}
	if (!_save.defender){
		_save.defender = _subclasse.defender;
		if (_subclasse.defender){
			array_push(_sprites, spr_card_defender);
		}
	}
	if (!_save.explodir){
		_save.explodir = _subclasse.explodir;
		if (_subclasse.explodir){
			array_push(_sprites, spr_card_explodir);
		}
	}
	if (!_save.inverter){
		_save.inverter = _subclasse.inverter;
		if (_subclasse.inverter){
			array_push(_sprites, spr_card_inverter);
		}
	}
	if (!_save.agrupar_atacar){
		_save.agrupar_atacar = _subclasse.agrupar_atacar;
		if (_subclasse.agrupar_atacar){
			array_push(_sprites, spr_card_agrupar_atacar);
		}
	}
	if (!_save.destruir_arma){
		_save.destruir_arma = _subclasse.destruir_arma;
		if (_subclasse.destruir_arma){
			array_push(_sprites, spr_card_destruir_arma);
		}
	}
	if (!_save.usar_arma){
		_save.usar_arma = _subclasse.usar_arma;
		if (_subclasse.usar_arma){
			array_push(_sprites, spr_card_usar_arma);
		}
	}
	if (!_save.voar){
		_save.voar = _subclasse.voar;
		if (_subclasse.voar){
			array_push(_sprites, spr_card_voar);
		}
	}
	
	//arrumando a lista de sprites da herança agora
	for (var i = 0; i < array_length(_superclasse.sprite_list); i++){
		for (var o = 0; o < array_length(_subclasse.sprite_list); o++){
			if (sprite_get_name(_superclasse.sprite_list[i]) == spr_card_forca1_var or 
			sprite_get_name(_superclasse.sprite_list[i]) == spr_card_forca2_var or 
			sprite_get_name(_superclasse.sprite_list[i]) == spr_card_forca3_cons or 
			sprite_get_name(_superclasse.sprite_list[i]) == spr_card_forca4_cons){
				if (sprite_get_name(_subclasse.sprite_list[o]) == spr_card_forca1_var or 
				sprite_get_name(_subclasse.sprite_list[o]) == spr_card_forca2_var or 
				sprite_get_name(_subclasse.sprite_list[o]) == spr_card_forca3_cons or 
				sprite_get_name(_subclasse.sprite_list[o]) == spr_card_forca4_cons){
					array_push(_sprites, _subclasse.sprite_list[o]);
					break;
				}
			}
			else if (sprite_get_name(_superclasse.sprite_list[i]) == spr_card_escudo1_var or 
			sprite_get_name(_superclasse.sprite_list[i]) == spr_card_escudo2_var or 
			sprite_get_name(_superclasse.sprite_list[i]) == spr_card_escudo1_cons or 
			sprite_get_name(_superclasse.sprite_list[i]) == spr_card_escudo2_cons){
				if (sprite_get_name(_subclasse.sprite_list[o]) == spr_card_escudo1_var or 
				sprite_get_name(_subclasse.sprite_list[o]) == spr_card_escudo2_var or 
				sprite_get_name(_subclasse.sprite_list[o]) == spr_card_escudo1_cons or 
				sprite_get_name(_subclasse.sprite_list[o]) == spr_card_escudo2_cons){
					array_push(_sprites, _subclasse.sprite_list[o]);
					break;
				}
			}
			else if (sprite_get_name(_superclasse.sprite_list[i]) == spr_card_energia1 or 
			sprite_get_name(_superclasse.sprite_list[i]) == spr_card_energia2){
				if (sprite_get_name(_subclasse.sprite_list[o]) == spr_card_energia1 or 
				sprite_get_name(_subclasse.sprite_list[o]) == spr_card_energia2){
					array_push(_sprites, _subclasse.sprite_list[o]);
					break;
				}
			}
		}
	}
	_save.sprite_list = _sprites;
	
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.create_project);
	var _data = json_stringify(_save);
	buffer_write(con_client.buffer, buffer_string, _data);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}