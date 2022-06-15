/// @description Insert description here
// You can write your code in this editor

aux_id = -1;

player_projects = array_create(0);
player_instances = array_create(0);
create_project = false; //true= tela de criação de nova classe
edit_project = false; //true = tela de edição de projeto

op_projects_pos = [[490,175],[610,175],[730,175],
				   [490,320],[610,320],[730,320]];
				   
p_projects_pos = [[490,730],[610,730],[730,730],
				  [490,875],[610,875],[730,875]];

move_projects_pos = [[100,175], [220,175],
					   [100,320], [220,320],
					   [100,465], [220,465]];

hand = ds_list_create();
hand_size = 0;
vida_atual = 0;
vida_max = 20;
card_selected = noone;
is_local = true;
def_menu_queue = array_create(0);


state = PLAYERSTATE.ENEMY_TURN;

enum  PLAYERSTATE { //enumerar ações possiveis para enviar para o servidor
	DRAW_PHASE,
	MAIN_PHASE1,
	BATTLE_PHASE,
	MAIN_PHASE2,
	END_PHASE,
	ENEMY_TURN
}
