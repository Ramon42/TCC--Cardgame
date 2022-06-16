/// @description Insert description here
// You can write your code in this editor

player_projects = array_create(0);
player_instances = array_create(0);
create_project = false; //true= tela de criação de nova classe
edit_project = false; //true = tela de edição de projeto

op_projects_pos = [[490,175],[610,175],[730,175],[850,175],
				   [490,320],[610,320],[730,320],[850,320],
				   [490,465],[610,465],[730,465],[850,465]];
				   
p_projects_pos = [[490,730],[610,730],[730,730],[850,730],
				  [490,875],[610,875],[730,875],[850,875],
				  [490,1020],[610,1020],[610,1020],[850,1020]];

move_projects_pos = [[100,175],[220,175],
					 [100,320],[220,320],
					 [100,465],[220,465],
					 [100,610],[220,610],
					 [100,755],[220,755],
					 [100,900],[220,900]];

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
