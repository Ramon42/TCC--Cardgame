// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_assign_stats(_card){
	if (_card.sprite_index == spr_card_projeto_final){
		_card.card_subtype = SUBTYPE.PROJETO_FINAL;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Classe - final - \nProjeto -> Descreve o funcionamento do robô. \nAgrupa variáveis e métodos. \nNão pode ser superclasse numa relação de herança.";
	}
	else if (_card.sprite_index == spr_card_heranca){
		_card.card_subtype = SUBTYPE.HERANCA;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Copia variáveis e métodos de uma SuperClasse para uma subclasse.\nA subclasse passa a ter todas as características da SuperClasse, além das que forem definidas nela. \nMétodos e variáveis com mesmo nome e parâmetros na subclasse sobrepõem os da SuperClasse.";
	}
	else if (_card.sprite_index == spr_card_projeto){
		_card.card_subtype = SUBTYPE.PROJETO;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Classe - \nProjeto -> Descreve o funcionamento do robô. \nAgrupa variáveis e métodos.";
	}
	else if (_card.sprite_index == spr_card_superclasse_atacar1){
		_card.card_subtype = SUBTYPE.SUPERCLASSE_ATACAR1;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Classe - Abstrata - \nSuperClasse -> Não se pode criar Objetos a partir desta classe. Deve ser usada apenas como superclasse em relação de Herança.\n-var Força = 1;\n-var Energia = 2;\nAtacar(Objeto): Causa FORÇA de dano ao Objeto alvo.";
	}
	else if (_card.sprite_index == spr_card_superclasse_atacar2){
		_card.card_subtype = SUBTYPE.SUPERCLASSE_ATACAR2;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Classe - Abstrata - \nSuperClasse -> Não se pode criar Objetos a partir desta classe. Deve ser usada apenas como superclasse em relação de Herança.\n-var Força = 2;\n-var Energia = 1;\nAtacar(Objeto): Causa FORÇA de dano ao Objeto alvo.";
	}
	else if (_card.sprite_index == spr_card_superclasse_defender1){
		_card.card_subtype = SUBTYPE.SUPERCLASSE_DEFENDER1;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Classe - Abstrata - \nSuperClasse -> Não se pode criar Objetos a partir desta classe. Deve ser usada apenas como superclasse em relação de Herança.\n-var Escudo = 1;\n-var Energia = 2;\nDefender(Ataque): Bloqueia ESCUDO de dano no Ataque recebido.";
	}
	else if (_card.sprite_index == spr_card_superclasse_defender2){
		_card.card_subtype = SUBTYPE.SUPERCLASSE_DEFENDER2;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Classe - Abstrata - \nSuperClasse -> Não se pode criar Objetos a partir desta classe. Deve ser usada apenas como superclasse em relação de Herança.\n-var Escudo = 2;\n-var Energia = 1;\nDefender(Ataque): Bloqueia ESCUDO de dano no Ataque recebido.";
	}
	else if (_card.sprite_index == spr_card_superclasse_voar){
		_card.card_subtype = SUBTYPE.SUPERCLASSE_VOAR;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Classe - Abstrata - \nSuperClasse -> Não se pode criar Objetos a partir desta classe. Deve ser usada apenas como superclasse em relação de Herança.\n-bool Voo = false;\n-var Energia = 1;\nVoar(): Gire esta carta para a posição horizontal para ativar voo.";
	}
	else if (_card.sprite_index == spr_card_classe_canhao){
		_card.card_subtype = SUBTYPE.CANHAO;
		_card.card_type = CARDTYPE.CLASSE;
		_card.texto_auxiliar = "Classe - com método abstrato - \nCanhão de Fótons -> Não é necessário criar um objeto de Arma para usar o método desta classe.\nO Robô precisa ter a habilidade de usar armas para poder usar esta carta.\nAtirarEm(Objeto): Causa 8 pontos de dano ao alvo. Demora 5 turnos para recarregar.";
	}
	else if (_card.sprite_index == spr_card_incremento1){
		_card.card_subtype = SUBTYPE.INCREMENTO1;
		_card.card_type = CARDTYPE.VALOR;
		_card.texto_auxiliar = "Valor - \nIncremento = 1 -> Aumenta permanentemente em 1 o valor da Variável escolhida.\nEsta carta não pode mudar de posição.\nNão pode ser usada em Constantes.";
	}
	else if (_card.sprite_index == spr_card_incremento2){
		_card.card_subtype = SUBTYPE.INCREMENTO2;
		_card.card_type = CARDTYPE.VALOR;
		_card.texto_auxiliar = "Valor - \nIncremento = 2 -> Aumenta permanentemente em 2 o valor da Variável escolhida.\nEsta carta não pode mudar de posição.\nNão pode ser usada em Constantes.";
	}
	else if (_card.sprite_index == spr_card_decremento1){
		_card.card_subtype = SUBTYPE.DECREMENTO1;
		_card.card_type = CARDTYPE.VALOR;
		_card.texto_auxiliar = "Valor - \nDecremento = 1 -> Diminui permanentemente em 1 o valor da Variável escolhida.\nEsta carta não pode mudar de posição.\nNão pode ser usada em Constantes.";
	}
	else if (_card.sprite_index == spr_card_decremento2){
		_card.card_subtype = SUBTYPE.DECREMENTO2;
		_card.card_type = CARDTYPE.VALOR;
		_card.texto_auxiliar = "Valor - \nDecremento = 2 -> Diminui permanentemente em 2 o valor da Variável escolhida.\nEsta carta não pode mudar de posição.\nNão pode ser usada em Constantes.";
	}
	else if (_card.sprite_index == spr_card_forca1_var){
		_card.card_subtype = SUBTYPE.FORCA;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 1;
		_card.texto_auxiliar = "Variável - inteiro - \nForça = 1 -> Causa 1 ponto de dano ao objeto ou fábrica alvo.";
	}
	else if (_card.sprite_index == spr_card_forca2_var){
		_card.card_subtype = SUBTYPE.FORCA;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 2;
		_card.texto_auxiliar = "Variável - inteiro - \nForça = 2 -> Causa 2 pontos de dano ao objeto ou fábrica alvo.";
	}
	else if (_card.sprite_index == spr_card_forca3_cons){
		_card.card_subtype = SUBTYPE.FORCA;
		_card.card_type = CARDTYPE.CONSTANTE;
		_card.valor = 3;
		_card.texto_auxiliar = "Constante - inteiro - \nForça = 3 -> Causa 3 pontos de dano ao objeto ou fábrica alvo.";
	}
	else if (_card.sprite_index == spr_card_forca4_cons){
		_card.card_subtype = SUBTYPE.FORCA;
		_card.card_type = CARDTYPE.CONSTANTE;
		_card.valor = 4;
		_card.texto_auxiliar = "Constante - inteiro - \nForça = 4 -> Causa 4 pontos de dano ao objeto ou fábrica alvo.";
	}
	else if (_card.sprite_index == spr_card_escudo1_var){
		_card.card_subtype = SUBTYPE.ESCUDO;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 1;
		_card.texto_auxiliar = "Variável - inteiro - \nEscudo = 1 -> Resiste a 1 ponto de dano.";
	}
	else if (_card.sprite_index == spr_card_escudo2_var){
		_card.card_subtype = SUBTYPE.ESCUDO;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 2;
		_card.texto_auxiliar = "Variável - inteiro - \nEscudo = 2 -> Resiste a 2 pontos de dano.";
	}
	else if (_card.sprite_index == spr_card_escudo1_cons){
		_card.card_subtype = SUBTYPE.ESCUDO;
		_card.card_type = CARDTYPE.CONSTANTE;
		_card.valor = 1;
		_card.texto_auxiliar = "Constante - inteiro - \nEscudo = 1 -> Resiste a 1 ponto de dano.";
	}
	else if (_card.sprite_index == spr_card_escudo2_cons){
		_card.card_subtype = SUBTYPE.ESCUDO;
		_card.card_type = CARDTYPE.CONSTANTE;
		_card.valor = 2;
		_card.texto_auxiliar = "Constante - inteiro - \nEscudo = 2 -> Resiste a 2 pontos de dano.";
	}
	else if (_card.sprite_index == spr_card_energia1){
		_card.card_subtype = SUBTYPE.ENERGIA;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 1;
		_card.texto_auxiliar = "Variável - inteiro - \nEnergia = 1 -> Resiste a 1 ponto de dano.";
	}
	else if (_card.sprite_index == spr_card_energia2){
		_card.card_subtype = SUBTYPE.ENERGIA;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.valor = 2;
		_card.texto_auxiliar = "Variável - inteiro - \nEnergia = 2 -> Resiste a 2 pontos de dano.";
	}
	else if (_card.sprite_index == spr_card_defender){
		_card.card_subtype = SUBTYPE.DEFENDER;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - sem retorno - \nDefender(Ataque) -> Bloqueia ESCUDO de dano no Ataque recebido.";
	}
	else if (_card.sprite_index == spr_card_atacar1){
		_card.card_subtype = SUBTYPE.ATACAR_1;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - retorno inteiro - \nAtacar(Objeto) -> Causa FORÇA de dano ao Objeto alvo.";
	}
	else if (_card.sprite_index == spr_card_atacar2){
		_card.card_subtype = SUBTYPE.ATACAR_2;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - retorno inteiro - \nAtacar(Objeto, Objeto) -> Permite atacar até dois objetos numa única jogada. \nCausa FORÇA de dano distribuído entre os Objetos-alvo, conforme escolha do jogador atacante.";
	}
		else if (_card.sprite_index == spr_card_atacar2){
		_card.card_subtype = SUBTYPE.ATACAR_2;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - retorno inteiro - \nAtacar(Objeto, Objeto) -> Permite atacar até dois objetos numa única jogada. \nCausa FORÇA de dano distribuído entre os Objetos-alvo, conforme escolha do jogador atacante.";
	}
	else if (_card.sprite_index == spr_card_explodir){
		_card.card_subtype = SUBTYPE.EXPLODIR;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - sem retorno - \nExplodir(Objeto) -> Remove do jogo o Objeto atacante e o Objeto alvo.";
	}
	else if (_card.sprite_index == spr_card_inverter){
		_card.card_subtype = SUBTYPE.INVERTER;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - sem retorno - \nInverter(Var, Var) -> Permite trocar o valor de duas Variáveis do Objeto atual.\nEx. Força = 1, Energia = 2, após usar este método: Força = 2, Energia = 1.";
	}
	else if (_card.sprite_index == spr_card_agrupar_atacar){
		_card.card_subtype = SUBTYPE.AGRUPAR_ATACAR;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - retorno inteiro - \nAgruparEAtacar(Aliado, Inimigo) -> Agrupa dois Robôs do jogador atacante para atingir um único alvo adversário.\nO dano causado é a soma da FORÇA dos dois atacantes.\nO Robô agrupado não joga neste turno.";
	}
	else if (_card.sprite_index == spr_card_destruir_arma){
		_card.card_subtype = SUBTYPE.DESTRUIR_ARMA;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - sem retorno - \nDestruirArma(Arma) -> Destrói um OBJETO de Arma alvo.\nA Arma só pode ser destruida se estiver em período de recarga.";
	}
	else if (_card.sprite_index == spr_card_usar_arma){
		_card.card_subtype = SUBTYPE.USAR_ARMA;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - sem retorno - \nUsarArma() -> Permite chamar o método de disparo de uma Arma escolhida pelo jogador.";
	}
	else if (_card.sprite_index == spr_card_voo){
		_card.card_subtype = SUBTYPE.VOO;
		_card.card_type = CARDTYPE.VARIAVEL;
		_card.texto_auxiliar = "Variável - lógico - \nVoo -> Concede a habilidade de voar.\nO voo deve ser ativado através de uma carta de método.\nGire a carta de objeto quando estiver voando, retorne à posição normal quando estiver em terra.";
	}
	else if (_card.sprite_index == spr_card_refletir){
		_card.card_subtype = SUBTYPE.REFLETIR;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - retorno inteiro - \nRefletir(Ataque) -> Se durante a defesa o Objeto receber um Ataque maior que ENERGIA + ESCUDO, a diferença é devolvida ao atacante.";
	}
	else if (_card.sprite_index == spr_card_voar){
		_card.card_subtype = SUBTYPE.VOAR;
		_card.card_type = CARDTYPE.METODO;
		_card.texto_auxiliar = "Método - sem retorno - \nVoar() -> Esta carta só pode ser usada se a classe possuir a variável Voo.\nGire a carta de Objeto para a posição horizontal para ativar o voo.\nRetorne a carta de Objeto à posição vertical para desativar o voo.";
	}
	else if (_card.sprite_index == spr_card_robo){
		_card.card_subtype = SUBTYPE.ROBO;
		_card.card_type = CARDTYPE.OBJETO;
		_card.texto_auxiliar = "Objeto - \nRobô -> Possui as características definidas no projeto atual.\nSe um projeto sofrer modificações, esta carta deve ser enviada para o coletor de lixo.";
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