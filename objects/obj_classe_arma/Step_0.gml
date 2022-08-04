/// @description Insert description here
// You can write your code in this editor


if (self.sprite == spr_card_classe_canhao){
	self.texto_auxiliar = "Classe - com método abstrato - \nCanhão de Fótons -> Não é necessário criar um objeto de Arma para usar o método desta classe.\nO Robô precisa ter o Método UsarArma() para poder usar esta carta.\nAtirarEm(Objeto): Causa 5 pontos de dano ao alvo. Demora 3 turnos para recarregar.";
}

else if (self.sprite == spr_card_classe_blaster){
	self.texto_auxiliar = "Classe - com método abstrato - \nBlaster -> Não é necessário criar um objeto de Arma para usar o método desta classe.\nO Robô precisa ter o Método UsarArma() para poder usar esta carta.\nAtirarEm(Objeto): Causa 4 pontos de dano ao alvo. Demora 2 turnos para recarregar.";
}

else if (self.sprite == spr_card_classe_railgun){
	self.texto_auxiliar = "Classe - com método abstrato - \nRailgun -> Não é necessário criar um objeto de Arma para usar o método desta classe.\nO Robô precisa ter o Método UsarArma() para poder usar esta carta.\nAtirarEm(Objeto): Causa 8 pontos de dano ao alvo. Demora 5 turnos para recarregar.";
}