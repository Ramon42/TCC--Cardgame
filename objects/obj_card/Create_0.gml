/// @description Insert description here
// You can write your code in this editor


card_type = -1;
card_subtype = -1;
in_project = false;
move_card = false;


x_pos = x;
y_pos = y;

valor = noone;
texto_auxiliar = "";

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
	DECREMENTO, //VALORES
	INCREMENTO, //
	
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
	SUPERCLASSE,
	HERANCA,
	FUZIL, 
	BAZUCA,
	CANHAO, //
	
	ROBO, //OBJETOS
	ARMA, //
	
	FORCA, //ATRIBUTOS
	ENERGIA,
	ESCUDO,
	VOO //
}