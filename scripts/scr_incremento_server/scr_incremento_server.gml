// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_incremento_server(_proj_id, _var_sub, _incr_sub, _sock, _sock_op){
	show_message("\nSUBTYPE RECEBIDO> " + string(_incr_sub));
	for (var i = 0; i < array_length(con_server.projects_server); i++){
		if (con_server.projects_server[i, 1] == _proj_id){
			show_message("ACHOU \nPROJETO> " + string(_proj_id) + "\nINCREMENTO SUBTYPE> " + string(_incr_sub));
			switch (_var_sub){
				case SUBTYPE.FORCA:
					switch (_incr_sub){
						case SUBTYPE.INCREMENTO1:
							con_server.projects_server[i, 2].forca_var += 1;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].forca_var));
						break;
						case SUBTYPE.INCREMENTO2:
							con_server.projects_server[i, 2].forca_var += 2;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].forca_var));
						break;
						case SUBTYPE.DECREMENTO1:
							con_server.projects_server[i, 2].forca_var -= 1;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].forca_var));
						break;
						case SUBTYPE.DECREMENTO2:
							con_server.projects_server[i, 2].forca_var -= 2;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].forca_var));
						break;
					}
				break;
				case SUBTYPE.ENERGIA:
				show_message("ENTROY SUBTYPE ENERGIA");
					switch (_incr_sub){
						case SUBTYPE.INCREMENTO1:
							con_server.projects_server[i, 2].energia += 1;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].energia));
						break;
						case SUBTYPE.INCREMENTO2:
							con_server.projects_server[i, 2].energia += 2;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].energia));
						break;
						case SUBTYPE.DECREMENTO1:
							con_server.projects_server[i, 2].energia -= 1;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].energia));
						break;
						case SUBTYPE.DECREMENTO2:
							con_server.projects_server[i, 2].energia -= 2;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].energia));
						break;
					}
				break;
				case SUBTYPE.ESCUDO:
					switch (_incr_sub){
						case SUBTYPE.INCREMENTO1:
							con_server.projects_server[i, 2].escudo_var += 1;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].escudo_var));
							break;
						case SUBTYPE.INCREMENTO2:
							con_server.projects_server[i, 2].escudo_var += 2;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].escudo_var));
							break;
						case SUBTYPE.DECREMENTO1:
							con_server.projects_server[i, 2].escudo_var -= 1;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].escudo_var));
							break;
						case SUBTYPE.DECREMENTO2:
							con_server.projects_server[i, 2].escudo_var -= 2;
							show_message("NOVO VALOR> " + string(con_server.projects_server[i, 2].escudo_var));
							break;
					}
					break;
			}
			/*
			var _update = {
				sprite_list : _projeto.sprite_list,
				forca_var : _projeto.forca_var,
				forca_cons :  _projeto.forca_cons,
				escudo_var :  _projeto.escudo_var,
				escudo_cons :  _projeto.escudo_cons,
				energia :  _projeto.energia,
				voo : _projeto.voo,
				atacar_1 : _projeto.atacar_1,
				atacar_2 : _projeto.atacar_2,
				refletir : _projeto.refletir,
				defender : _projeto.defender,
				explodir : _projeto.explodir,
				inverter : _projeto.inverter,
				agrupar_atacar : _projeto.agrupar_atacar,
				destruir_arma : _projeto.destruir_arma,
				usar_arma : _projeto.usar_arma,
				voar : _projeto.voar
			}
			var _data = json_stringify(_update);
			*/
			scr_update_projects(_sock, _sock_op);
			/*
			buffer_seek(buffer, buffer_seek_start, 0);
			buffer_write(buffer, buffer_u8, network.invert);
			buffer_write(buffer, buffer_u8, _proj_id);
			buffer_write(buffer, buffer_string, _data);
			network_send_packet(_sock, buffer, buffer_tell(buffer));
			network_send_packet(_sock_op, buffer, buffer_tell(buffer));
			*/
			break;
		}
	}
}