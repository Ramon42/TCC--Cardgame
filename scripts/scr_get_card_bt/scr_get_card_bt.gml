// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//AO CLICAR NO BOTÃO DE JOGAR UMA CARTA, RETORNA AS POSSIVEIS JOGADAS COM ELA
function scr_get_card_bt(_card_selected){
	if (_card_selected != noone and (con_client.player.state == PLAYERSTATE.MAIN_PHASE1 or con_client.player.state == PLAYERSTATE.MAIN_PHASE2)
	and (_card_selected.object_index == obj_card)){
		//if (ds_list_find_index(con.client.project_list)//caso a carta esteja dentro de um projeto
		if (ds_list_find_index(con_client.player.hand, _card_selected) != -1){ //checa se a carta 
			//selecionada está na mão do jogador, caso sim, serão mostrados os botoes de adicionar ao projeto
			switch (_card_selected.card_type){ 
				case CARDTYPE.CLASSE:
					switch (_card_selected.card_subtype){
						case SUBTYPE.PROJETO:
							if (!con_client.player.create_project and !con_client.player.edit_project) {
								instance_create_layer(0,0, "Instances", obj_class_card_bt);
							}
							break;
						
						case SUBTYPE.SUPERCLASSE_ATACAR1:
							if (!con_client.player.create_project and !con_client.player.edit_project){
								instance_create_layer(0,0, "Instances", obj_superclass_bt);
							}
							break;
						case SUBTYPE.SUPERCLASSE_ATACAR2:
							if (!con_client.player.create_project and !con_client.player.edit_project){
								instance_create_layer(0,0, "Instances", obj_superclass_bt);
							}
							break;
						case SUBTYPE.SUPERCLASSE_DEFENDER1:
							if (!con_client.player.create_project and !con_client.player.edit_project){
								instance_create_layer(0,0, "Instances", obj_superclass_bt);
							}
							break;
						case SUBTYPE.SUPERCLASSE_DEFENDER2:
							if (!con_client.player.create_project and !con_client.player.edit_project){
								instance_create_layer(0,0, "Instances", obj_superclass_bt);
							}
							break;
						case SUBTYPE.SUPERCLASSE_VOAR:
							if (!con_client.player.create_project and !con_client.player.edit_project){
								instance_create_layer(0,0, "Instances", obj_superclass_bt);
							}
							break;
						
						case SUBTYPE.HERANCA:
							if (!con_client.player.create_project and !con_client.player.edit_project){
								instance_create_layer(0,0, "Instances", obj_heranca_bt);
							}
							break;
							
						case SUBTYPE.CANHAO:
							instance_create_layer(0,0, "Instances", obj_arma_bt);
							var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
							_dica.text = "Cartas de Classe de Arma com método estático não precisam ser Instanciadas para serem utilizadas pelos seus Robôs caso eles tenham o Método ''AtirarEm(Alvo)''!\nSó é possível ter uma dessas cartas em campo por vez";
						break;
						case SUBTYPE.BLASTER:
							instance_create_layer(0,0, "Instances", obj_arma_bt);
							var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
							_dica.text = "Cartas de Classe de Arma com método estático não precisam ser Instanciadas para serem utilizadas pelos seus Robôs caso eles tenham o Método ''AtirarEm(Alvo)''!\nSó é possível ter uma dessas cartas em campo por vez";
						break;
						case SUBTYPE.RAILGUN:
							instance_create_layer(0,0, "Instances", obj_arma_bt);
							var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
							_dica.text = "Cartas de Classe de Arma com método estático não precisam ser Instanciadas para serem utilizadas pelos seus Robôs caso eles tenham o Método ''AtirarEm(Alvo)''!\nSó é possível ter uma dessas cartas em campo por vez";
						break;
					}
					break;
			
				case CARDTYPE.VARIAVEL:
					if (con_client.player.create_project or con_client.player.edit_project){
						instance_create_layer(0, 0, "Instances", obj_add_card_bt);
					}
					break;
					
				case CARDTYPE.CONSTANTE:
					if (con_client.player.create_project or con_client.player.edit_project){
						instance_create_layer(0, 0, "Instances", obj_add_card_bt);
					}
					break;
					
				case CARDTYPE.METODO:
					if (con_client.player.create_project or con_client.player.edit_project){
						instance_create_layer(0, 0, "Instances", obj_add_card_bt);
					}
					break;
					
				case CARDTYPE.VALOR:
					if (array_length(con_client.project_list) > 0){
						instance_create_layer(0, 0, "Instances", obj_incr_decr_bt);
					}
					break;
			}
		}
		////
		else { 
			var _find = false;
			show_debug_message("CARTA SELECIONADA A SER PROCURADA>> "+ string(_card_selected));
			for (var p = 0; p < array_length(con_client.player_proj); p++){
				var _aux = con_client.player_proj[p, 2];
				show_debug_message("GET BT>>> " + string(_aux));
				for (var c = 0; c < ds_list_size(_aux.cards_in_project); c++){
					show_debug_message("LENDO A LISTA DE CARTAS DE UM PROJETO>> " + string(_aux.cards_in_project[|c]));
					if(_aux.cards_in_project[|c] == _card_selected){
						_find = true;
						break;
					}
				}
			}
			//var _find = true; //temporario
			if (_find){//caso a carta já esteja em um projeto do jogador
				switch (_card_selected.card_type){
					case CARDTYPE.CLASSE:
						switch (_card_selected.card_subtype){
							case SUBTYPE.PROJETO:
							break;
						
							case SUBTYPE.HERANCA:
							break;
					}
					break;
			
					case CARDTYPE.VARIAVEL:
						if (con_client.player.edit_project){ 
							//teste
							instance_create_layer(0, 0, "Instances", obj_move_card_bt);
							//
						}
						break;
				
					case CARDTYPE.METODO:
						if (con_client.player.edit_project){
							instance_create_layer(0, 0, "Instances", obj_move_card_bt);
						}
						break;
				}
			}
			else { //projeto do oponente
				
			}
			
		}
		
	}
}