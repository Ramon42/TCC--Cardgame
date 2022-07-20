/// @description Insert description here
// You can write your code in this editor


card_type = -1;
card_subtype = -1;
in_project = false;


x_pos = x;
y_pos = y;

valor = noone;
texto_auxiliar = "";
highlight = false;

enum CARDTYPE //todos os tipos de cartas e seus códigos
{
	CLASSE,
	METODO,
	VARIAVEL,
	CONSTANTE,
	OBJETO,
	EDICAO,
	VALOR,
	OBJETIVO
}

enum SUBTYPE //tipos especificos de cartas
{
	DECREMENTO1,
	DECREMENTO2,//VALORES
	INCREMENTO1,
	INCREMENTO2,//
	
	DEFENDER, //METODOS
	INVERTER,
	REFLETIR,
	USAR_ARMA,
	DESTRUIR_ARMA,
	ATACAR_1, //ATACAR COM UM PARAMETRO, ATACAR(OBJETO)
	ATACAR_2, //ATACAR COM 2 PARAMETROS, ATACAR(OBJETO, OBJETO)
	AGRUPAR_ATACAR,
	EXPLODIR,
	VOAR, //
	
	PROJETO, //CLASSES
	PROJETO_FINAL,
	SUPERCLASSE_ATACAR1,
	SUPERCLASSE_ATACAR2,
	SUPERCLASSE_DEFENDER1,
	SUPERCLASSE_DEFENDER2,
	SUPERCLASSE_VOAR,
	HERANCA,
	BLASTER, 
	RAILGUN,
	CANHAO, //
	
	ROBO, //OBJETOS
	ARMA, //
	
	FORCA, //ATRIBUTOS
	ENERGIA,
	ESCUDO,
	VOO //
}