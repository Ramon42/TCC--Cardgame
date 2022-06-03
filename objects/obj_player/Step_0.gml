/// @description Insert description here
// You can write your code in this editor

//TEM QUE MUDAR TODA ESSA PORRA AQUI PRA DENTRO DO CON CLIENT PQ FICA FAZENDO ESTA MERDA TODA HORA
if (!is_local) { exit; }

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
