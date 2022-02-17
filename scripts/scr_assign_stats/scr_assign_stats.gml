// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_assign_stats(_card){
	if (_card.sprite_index == spr_card_projeto){
		_card.card_subtype = SUBTYPE.PROJETO;
		_card.card_type = CARDTYPE.CLASSE;
	}
	else if (_card.sprite_index == spr_card_forca2_var){
		_card.card_subtype = SUBTYPE.FORCA;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 2;
	}
	else if (_card.sprite_index == spr_card_escudo2_var){
		_card.card_subtype = SUBTYPE.ESCUDO;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 2;
	}
	else if (_card.sprite_index == spr_card_atacar){
		_card.card_subtype = SUBTYPE.ATACAR_1;
		_card.card_type = CARDTYPE.METODO;
	}
	else if (_card.sprite_index == spr_card_robo){
		_card.card_subtype = SUBTYPE.ROBO;
		_card.card_type = CARDTYPE.OBJETO;
	}
}


/*
enum CARDTYPE //todos os tipos de cartas e seus códigos
{
	PROJETO = 0,
	METODO = 1,
	VARIAVEL = 2,
	CONSTANTE = 3,
	OBJETO = 4,
	EDICAO = 5
}
*/