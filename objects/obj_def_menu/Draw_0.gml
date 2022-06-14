/// @description Insert description here
// You can write your code in this editor

draw_self();
self.msg = "Dano recebido= " + string(self.atk_recebido) + "\n Escudo= " 
	+ string(self.escudo) + "\n Dano restante caso ataque seja bloqueado= " + string(self.dmg_restante)
	+ "\n Deseja bloquear o ataque?";
draw_text_ext(x, y, self.msg, 30, 500);