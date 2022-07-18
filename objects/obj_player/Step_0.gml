/// @description Insert description here
// You can write your code in this editor

//TEM QUE MUDAR TODA ESSA PORRA AQUI PRA DENTRO DO CON CLIENT PQ FICA FAZENDO ESTA MERDA TODA HORA
if (!is_local) { exit; }

if (instance_number(obj_def_menu) < 1 and array_length(self.def_menu_queue) > 0){ //caso já não exista esse menu
	//show_message("CRIANDO MENU DEFENDER");
	var _menu = instance_create_depth(0, 0, -5, obj_def_menu);
	_menu.atk_recebido = self.def_menu_queue[0, 0];
	_menu.escudo = self.def_menu_queue[0, 1]
	_menu.atk = self.def_menu_queue[0, 2];
	_menu.def = self.def_menu_queue[0, 3];
	array_delete(self.def_menu_queue, 0, 1);
}

switch(self.state){
	case PLAYERSTATE.DRAW_PHASE: scr_playerstate_draw(); break;
	case PLAYERSTATE.MAIN_PHASE1: scr_playerstate_main1(); break;
	case PLAYERSTATE.BATTLE_PHASE: scr_playerstate_battle(); break;
	case PLAYERSTATE.MAIN_PHASE2: scr_playerstate_main2(); break;
	case PLAYERSTATE.END_PHASE: scr_playerstate_end(); break;
	case PLAYERSTATE.ENEMY_TURN: scr_playerstate_wait(); break;
}

/*
scr_show_hand();
scr_get_card();
*/
