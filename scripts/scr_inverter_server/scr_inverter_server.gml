// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inverter_server(_obj_id, _var1, _var2, _sock ,_sock_op){
	var num1, num2, _robo;
	for (var i = 0; i < array_length(con_server.instances_server); i++){
		if (con_server.instances_server[i, 2].inst_id == _obj_id){
			_robo = con_server.instances_server[i, 2];
			switch (_var1){
				case SUBTYPE.FORCA:
					num1 = _robo.forca_var;
					switch (_var2){
						case SUBTYPE.ENERGIA:
							num2 = _robo.energia;
							_robo.forca_var = num2;
							_robo.energia = num1;
							break;
						case SUBTYPE.ESCUDO:
							num2 = _robo.escudo_var;
							_robo.forca_var = num2;
							_robo.escudo_var = num1;
							break;
					}
					break;
				case SUBTYPE.ENERGIA:
					num1 = _robo.energia;
					switch (_var2){
						case SUBTYPE.FORCA:
							num2 = _robo.forca_var;
							_robo.energia = num2;
							_robo.forca_var = num1;
							break;
						case SUBTYPE.ESCUDO:
							num2 = _robo.escudo_var;
							_robo.energia = num2;
							_robo.escudo_var = num1;
							break;
					}
					break;
				case SUBTYPE.ESCUDO:
					num1 = _robo.escudo_var;
					switch (_var2){
						case SUBTYPE.ENERGIA:
							num2 = _robo.energia;
							_robo.escudo_var = num2;
							_robo.energia = num1;
							break;
						case SUBTYPE.FORCA:
							num2 = _robo.forca_var;
							_robo.escudo_var = num2;
							_robo.forca_var = num1;
							break;
					}
					break;
			}
			var _update = {
				sprite_list : _robo.sprite_list,
				forca_var : _robo.forca_var,
				forca_cons :  _robo.forca_cons,
				escudo_var :  _robo.escudo_var,
				escudo_cons :  _robo.escudo_cons,
				energia :  _robo.energia,
				voo : _robo.voo,
				atacar_1 : _robo.atacar_1,
				atacar_2 : _robo.atacar_2,
				refletir : _robo.refletir,
				defender : _robo.defender,
				explodir : _robo.explodir,
				inverter : _robo.inverter,
				agrupar_atacar : _robo.agrupar_atacar,
				destruir_arma : _robo.destruir_arma,
				usar_arma : _robo.usar_arma,
				voar : _robo.voar
			}
			var _data = json_stringify(_update);
			buffer_seek(buffer, buffer_seek_start, 0);
			buffer_write(buffer, buffer_u8, network.invert);
			buffer_write(buffer, buffer_u32, _obj_id);
			buffer_write(buffer, buffer_string, _data);
			network_send_packet(_sock, buffer, buffer_tell(buffer));
			network_send_packet(_sock_op, buffer, buffer_tell(buffer));
			break;
		}
	}
}