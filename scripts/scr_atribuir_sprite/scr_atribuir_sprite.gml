// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
1 = escudo2
2 = projeto
3 = forca2
4 = robo
5 = atacar(objeto)
6 = defender(ataque)
7 = energia 2
8 = voar()
*/
function scr_atribuir_sprite(_val){
	switch(_val){
		case CARD.v_escudo1:
			return spr_card_escudo1_var;
			break;
		case CARD.v_escudo2:
			return spr_card_escudo2_var;
			break;
		case CARD.c_escudo1:
			return spr_card_escudo1_cons;
			break;
		case CARD.c_escudo2:
			return spr_card_escudo2_cons;
			break;
		case CARD.projeto:
			return spr_card_projeto;
			break;
		case CARD.v_forca1:
			return spr_card_forca1_var;
			break;
		case CARD.v_forca2:
			return spr_card_forca2_var;
			break;
		case CARD.c_forca3:
			return spr_card_forca3_cons;
			break;
		case CARD.c_forca4:
			return spr_card_forca4_cons;
			break;
		case CARD.b_voo:
			return spr_card_voo;
			break;
		case CARD.robo:
			return spr_card_robo;
			break;
		case CARD.m_atacar1:
			return spr_card_atacar1;
			break;
		case CARD.m_atacar2:
			return spr_card_atacar2;
			break;
		case CARD.m_agrupar_atacar:
			return spr_card_agrupar_atacar;
			break;
		case CARD.m_explodir:
			return spr_card_explodir;
			break;
		case CARD.m_destruir_arma:
			return spr_card_destruir_arma;
			break;
		case CARD.m_usar_arma:
			return spr_card_usar_arma;
			break;
		case CARD.m_inverter:
			return spr_card_inverter;
			break;
		case CARD.m_refletir:
			return spr_card_refletir;
			break;
		case CARD.m_defender:
			return spr_card_defender;
			break;
		case CARD.v_energia1:
			return spr_card_energia1;
			break;
		case CARD.v_energia2:
			return spr_card_energia2;
			break;
		case CARD.m_voar:
			return spr_card_voar;
			break;
		case CARD.projeto_final:
			return spr_card_projeto_final;
			break;
		case CARD.heranca:
			return spr_card_heranca;
			break;
		case CARD.superclasse_atacar1:
			return spr_card_superclasse_atacar1;
			break;
		case CARD.superclasse_atacar2:
			return spr_card_superclasse_atacar2;
			break;
		case CARD.superclasse_defender1:
			return spr_card_superclasse_defender1;
			break;
		case CARD.superclasse_defender2:
			return spr_card_superclasse_defender2;
			break;
		case CARD.superclasse_voar:
			return spr_card_superclasse_voar;
			break;
		case CARD.canhao:
			return spr_card_classe_canhao;
			break;
		case CARD.blaster:
			return spr_card_classe_blaster;
			break;
		case CARD.railgun:
			return spr_card_classe_railgun;
			break;
		case CARD.v_incremento1:
			return spr_card_incremento1;
			break;
		case CARD.v_incremento2:
			return spr_card_incremento2;
			break;
		case CARD.v_decremento1:
			return spr_card_decremento1;
			break;
		case CARD.v_decremento2:
			return spr_card_decremento2;
			break;
	}
}