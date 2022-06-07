/// @description Insert description here
// You can write your code in this editor

aux_id = -1;

player_projects = noone;
player_instances = noone;
create_project = false; //true= tela de criação de nova classe
edit_project = false; //true = tela de edição de projeto

hand = ds_list_create();
hand_size = 0;
vida_atual = 0;
vida_max = 20;
card_selected = noone;
is_local = true;

state = PLAYERSTATE.ENEMY_TURN;

enum  PLAYERSTATE { //enumerar ações possiveis para enviar para o servidor
	DRAW_PHASE,
	MAIN_PHASE1,
	BATTLE_PHASE,
	MAIN_PHASE2,
	END_PHASE,
	ENEMY_TURN
}
