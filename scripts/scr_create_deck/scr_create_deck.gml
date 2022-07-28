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

function scr_create_deck(){
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.c_forca4);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.superclasse_voar);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.robo);
	
	ds_list_add(cards_in_deck, CARD.c_forca3);
	ds_list_add(cards_in_deck, CARD.v_energia2);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.v_escudo2);
	ds_list_add(cards_in_deck, CARD.m_defender);
	
	ds_list_add(cards_in_deck, CARD.canhao);
	ds_list_add(cards_in_deck, CARD.m_usar_arma);
	ds_list_add(cards_in_deck, CARD.superclasse_voar);
	ds_list_add(cards_in_deck, CARD.m_inverter);
	ds_list_add(cards_in_deck, CARD.v_decremento1);
	ds_list_add(cards_in_deck, CARD.v_escudo2);
	
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_forca2);
	ds_list_add(cards_in_deck, CARD.m_defender);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.superclasse_voar);
	ds_list_add(cards_in_deck, CARD.projeto);
	
	
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_forca2);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.canhao);
	ds_list_add(cards_in_deck, CARD.m_usar_arma);
	ds_list_add(cards_in_deck, CARD.superclasse_voar);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_forca2);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.superclasse_voar);
	ds_list_add(cards_in_deck, CARD.projeto);
	
	ds_list_add(cards_in_deck, CARD.v_decremento1);
	ds_list_add(cards_in_deck, CARD.v_decremento1);
	ds_list_add(cards_in_deck, CARD.v_decremento2);
	ds_list_add(cards_in_deck, CARD.v_decremento2);
	ds_list_add(cards_in_deck, CARD.v_incremento2);
	ds_list_add(cards_in_deck, CARD.v_incremento2);
	ds_list_add(cards_in_deck, CARD.v_incremento1);
	ds_list_add(cards_in_deck, CARD.v_incremento1);
	ds_list_add(cards_in_deck, CARD.m_defender);
	ds_list_add(cards_in_deck, CARD.m_defender);
	ds_list_add(cards_in_deck, CARD.m_defender);
	ds_list_add(cards_in_deck, CARD.m_defender);
	ds_list_add(cards_in_deck, CARD.m_voar);
	ds_list_add(cards_in_deck, CARD.m_voar);
	ds_list_add(cards_in_deck, CARD.m_voar);
	ds_list_add(cards_in_deck, CARD.m_voar);
	ds_list_add(cards_in_deck, CARD.b_voo);
	ds_list_add(cards_in_deck, CARD.b_voo);
	ds_list_add(cards_in_deck, CARD.b_voo);
	ds_list_add(cards_in_deck, CARD.b_voo);
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_energia2);
	ds_list_add(cards_in_deck, CARD.v_energia2);
	ds_list_add(cards_in_deck, CARD.v_energia2);
	ds_list_add(cards_in_deck, CARD.v_energia2);
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_energia1);
	ds_list_add(cards_in_deck, CARD.v_energia2);
	ds_list_add(cards_in_deck, CARD.v_energia2);
	ds_list_add(cards_in_deck, CARD.v_forca1);
	ds_list_add(cards_in_deck, CARD.v_forca1);
	ds_list_add(cards_in_deck, CARD.v_forca1);
	ds_list_add(cards_in_deck, CARD.v_forca1);
	ds_list_add(cards_in_deck, CARD.v_forca2);
	ds_list_add(cards_in_deck, CARD.v_forca2);
	ds_list_add(cards_in_deck, CARD.v_forca2);
	ds_list_add(cards_in_deck, CARD.v_forca2);
	ds_list_add(cards_in_deck, CARD.v_escudo1);
	ds_list_add(cards_in_deck, CARD.v_escudo1);
	ds_list_add(cards_in_deck, CARD.v_escudo1);
	ds_list_add(cards_in_deck, CARD.v_escudo1);
	ds_list_add(cards_in_deck, CARD.v_escudo2);
	ds_list_add(cards_in_deck, CARD.v_escudo2);
	ds_list_add(cards_in_deck, CARD.v_escudo2);
	ds_list_add(cards_in_deck, CARD.v_escudo2);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.m_atacar1);
	ds_list_add(cards_in_deck, CARD.m_atacar2);
	ds_list_add(cards_in_deck, CARD.m_atacar2);
	ds_list_add(cards_in_deck, CARD.m_atacar2);
	ds_list_add(cards_in_deck, CARD.m_atacar2);
	ds_list_add(cards_in_deck, CARD.m_usar_arma);
	ds_list_add(cards_in_deck, CARD.m_usar_arma);
	ds_list_add(cards_in_deck, CARD.m_usar_arma);
	ds_list_add(cards_in_deck, CARD.m_usar_arma);
	ds_list_add(cards_in_deck, CARD.m_refletir);
	ds_list_add(cards_in_deck, CARD.m_inverter);
	ds_list_add(cards_in_deck, CARD.m_explodir);
	ds_list_add(cards_in_deck, CARD.m_refletir);
	ds_list_add(cards_in_deck, CARD.m_inverter);
	ds_list_add(cards_in_deck, CARD.m_explodir);
	ds_list_add(cards_in_deck, CARD.m_refletir);
	ds_list_add(cards_in_deck, CARD.m_inverter);
	ds_list_add(cards_in_deck, CARD.m_explodir);
	ds_list_add(cards_in_deck, CARD.m_refletir);
	ds_list_add(cards_in_deck, CARD.m_inverter);
	ds_list_add(cards_in_deck, CARD.m_explodir);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.heranca);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.robo);
	ds_list_add(cards_in_deck, CARD.canhao);
	ds_list_add(cards_in_deck, CARD.blaster);
	ds_list_add(cards_in_deck, CARD.railgun);
	ds_list_add(cards_in_deck, CARD.superclasse_voar);
	ds_list_add(cards_in_deck, CARD.superclasse_voar);
	ds_list_add(cards_in_deck, CARD.superclasse_atacar1);
	ds_list_add(cards_in_deck, CARD.superclasse_atacar1);
	ds_list_add(cards_in_deck, CARD.superclasse_atacar1);
	ds_list_add(cards_in_deck, CARD.superclasse_atacar1);
	ds_list_add(cards_in_deck, CARD.superclasse_atacar2);
	ds_list_add(cards_in_deck, CARD.superclasse_atacar2);
	ds_list_add(cards_in_deck, CARD.superclasse_atacar2);
	ds_list_add(cards_in_deck, CARD.superclasse_atacar2);
	ds_list_add(cards_in_deck, CARD.superclasse_defender1);
	ds_list_add(cards_in_deck, CARD.superclasse_defender1);
	ds_list_add(cards_in_deck, CARD.superclasse_defender1);
	ds_list_add(cards_in_deck, CARD.superclasse_defender1);
	ds_list_add(cards_in_deck, CARD.superclasse_defender2);
	ds_list_add(cards_in_deck, CARD.superclasse_defender2);
	ds_list_add(cards_in_deck, CARD.superclasse_defender2);
	ds_list_add(cards_in_deck, CARD.superclasse_defender2);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	ds_list_add(cards_in_deck, CARD.projeto);
	
	ds_list_shuffle(cards_in_deck);
	
	//cartas compradas
	ds_list_insert(cards_in_deck, 0, CARD.superclasse_defender1);
	ds_list_insert(cards_in_deck, 0, CARD.superclasse_atacar2);
	
	ds_list_insert(cards_in_deck, 0, CARD.blaster);
	ds_list_insert(cards_in_deck, 0, CARD.railgun);
	
	ds_list_insert(cards_in_deck, 0, CARD.heranca);
	ds_list_insert(cards_in_deck, 0, CARD.heranca);
	
	ds_list_insert(cards_in_deck, 0, CARD.superclasse_atacar1);
	ds_list_insert(cards_in_deck, 0, CARD.superclasse_defender2);
	
	//mãos iniciais
	ds_list_insert(cards_in_deck, 0, CARD.projeto);
	ds_list_insert(cards_in_deck, 0, CARD.v_forca2);
	ds_list_insert(cards_in_deck, 0, CARD.robo);
	ds_list_insert(cards_in_deck, 0, CARD.m_usar_arma);
	ds_list_insert(cards_in_deck, 0, CARD.projeto);
	ds_list_insert(cards_in_deck, 0, CARD.v_energia2);
	ds_list_insert(cards_in_deck, 0, CARD.robo);
	ds_list_insert(cards_in_deck, 0, CARD.robo);
	
	ds_list_insert(cards_in_deck, 0, CARD.projeto);
	ds_list_insert(cards_in_deck, 0, CARD.v_forca2);
	ds_list_insert(cards_in_deck, 0, CARD.robo);
	ds_list_insert(cards_in_deck, 0, CARD.m_usar_arma);
	ds_list_insert(cards_in_deck, 0, CARD.projeto);
	ds_list_insert(cards_in_deck, 0, CARD.v_energia2);
	ds_list_insert(cards_in_deck, 0, CARD.robo);
	ds_list_insert(cards_in_deck, 0, CARD.robo);
	
	deck_size = ds_list_size(cards_in_deck);
	
}