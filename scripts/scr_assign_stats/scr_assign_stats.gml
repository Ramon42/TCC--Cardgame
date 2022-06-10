// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_assign_stats(_card){
	if (_card.sprite_index == spr_card_projeto){
		_card.card_subtype = SUBTYPE.PROJETO;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Utilize esta carta para criar um novo Projeto.";
	}
	else if (_card.sprite_index == spr_card_forca2_var){
		_card.card_subtype = SUBTYPE.FORCA;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 2;
		_card.texto_auxiliar = "Utilize esta carta para adicionar o valor 2 à variável Força do Projeto atual.";
	}
	else if (_card.sprite_index == spr_card_escudo2_var){
		_card.card_subtype = SUBTYPE.ESCUDO;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 2;
		_card.texto_auxiliar = "Utilize esta carta para adicionar o valor 2 à variável Escudo do Projeto atul.";
	}
	else if (_card.sprite_index == spr_card_energia2){
		_card.card_subtype = SUBTYPE.ENERGIA;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 2;
		_card.texto_auxiliar = "Utilize esta carta para adicionar o valor 2 à variável Energia do Projeto atual.";
	}
	else if (_card.sprite_index == spr_card_defender){
		_card.card_subtype = SUBTYPE.DEFENDER;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Utilize esta carta para adicionar o Método Defender(Ataque) ao Projeto atual.";
	}
	else if (_card.sprite_index == spr_card_atacar){
		_card.card_subtype = SUBTYPE.ATACAR_1;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Utilize esta carta para adicionar o Método Atacar(alvo) ao Projeto atual.";
	}
	else if (_card.sprite_index == spr_card_voar){
		_card.card_subtype = SUBTYPE.VOAR;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Utilize esta carta para adicionar o Método Voar() ao Projeto atual.";
	}
	else if (_card.sprite_index == spr_card_robo){
		_card.card_subtype = SUBTYPE.ROBO;
		_card.card_type = CARDTYPE.OBJETO;
		_card.texto_auxiliar = "Utilize esta carta para criar um Robô a partir de um Projeto existente.";
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