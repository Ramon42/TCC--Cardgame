// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
1 = escudo2
2 = projeto
3 = forca2
4 = robo
5 = atacar(objeto)
6 = defender(ataque)
*/

function scr_create_deck(){
	ds_list_add(cards_in_deck, 5);
	ds_list_add(cards_in_deck, 2);
	ds_list_add(cards_in_deck, 1);
	ds_list_add(cards_in_deck, 3);
	ds_list_add(cards_in_deck, 2);
	ds_list_add(cards_in_deck, 5);
	ds_list_add(cards_in_deck, 1);
	ds_list_add(cards_in_deck, 3);
	ds_list_add(cards_in_deck, 4);
	ds_list_add(cards_in_deck, 4);
	ds_list_add(cards_in_deck, 4);
	ds_list_add(cards_in_deck, 2);
	ds_list_add(cards_in_deck, 5);
	ds_list_add(cards_in_deck, 1);
	ds_list_add(cards_in_deck, 6);
	ds_list_add(cards_in_deck, 6);
	ds_list_add(cards_in_deck, 6);
	ds_list_add(cards_in_deck, 6);
	deck_size = ds_list_size(cards_in_deck);
	//ds_list_shuffle(cards_in_deck);
}