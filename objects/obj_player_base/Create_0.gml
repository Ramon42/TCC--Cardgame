/// @description Insert description here
// You can write your code in this editor

player_projects = array_create(0);
player_instances = array_create(0);

create_project = false; //true= tela de criação de nova classe
edit_project = false; //true = tela de edição de projeto

p_instances_pos = [[1004,622],[1138,622],[1272,622],[1406,622],[1540,622],[1674,622],
				   [1004,759],[1138,759],[1272,759],[1406,759],[1540,759],[1674,759]];

op_instances_pos = [[1004,457],[1138,457],[1272,457],[1406,457],[1540,457],[1674,457],
				    [1004,320],[1138,320],[1272,320],[1406,320],[1540,320],[1674,320]];

op_projects_pos = [[327,201],[428,201],[532,201],[633,201],
				   [327,338],[428,338],[532,338],[633,338],
				   [327,472],[428,472],[532,472],[633,472]];
				   
p_projects_pos = [[327,607],[428,607],[532,607],[633,607],
				  [327,741],[428,741],[532,741],[633,741],
				  [327,878],[428,878],[532,878],[633,878]];

p_superclass_pos = [[327,1012],[428,1012],[532,1012],[633,1012]];

op_superclass_pos = [[327,67],[428,67],[532,67],[633,67]];

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
