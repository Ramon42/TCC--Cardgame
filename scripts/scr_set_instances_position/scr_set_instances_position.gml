// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_instances_position(_instance_list){
	var aux_p = 0;
	var aux_o = 0;
	var _length = array_length(_instance_list);
	var aux_instance_list_player = [];
	for (var row = 0; row < _length ; row++){
		if (instance_exists(_instance_list[row, 2])){
			_instance_list[row, 2].image_xscale = 1;
			_instance_list[row, 2].image_yscale = 1;
			/*if (con_client.server_socket == _instance_list[row, 0]){ //checa se o projeto pertence a este jogador
				array_push(aux_instance_list_player, _instance_list[row]);
				if (aux_p mod 2 == 0) { //todo esse rolo só pra organizar os projetos
					_instance_list[row, 2].x = 1000;
					_instance_list[row, 2].y = ((100*(aux_p div 2))+800);
					aux_p++;
				}
				else {
					_instance_list[row, 2].x = 1200;
					_instance_list[row, 2].y = ((100*((aux_p-1) div 2))+800);
					aux_p++;
				}
			}
			*/
			//else {
			if (con_client.server_socket != _instance_list[row, 0]){ //projetos do oponente
				if (aux_o mod 2 == 0) { //todo esse rolo só pra organizar os projetos
					_instance_list[row, 2].x = 1000;
					_instance_list[row, 2].y = ((100*(aux_o div 2))+300);
					aux_o++;
				}
				else {
					_instance_list[row, 2].x = 1200;
					_instance_list[row, 2].y = ((100*((aux_o-1) div 2))+300);
					aux_o++;
				}
			}
		}

	}
	//con_client.player.player_instances = aux_instance_list_player; //seta todos os projetos do player vindos do servidor
}