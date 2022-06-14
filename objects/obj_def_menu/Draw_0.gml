/// @description Insert description here
// You can write your code in this editor

self.msg = "Dano recebido= " + string(self.atk_recebido) + "\n Escudo= " 
	+ string(self.escudo) + "\n Energia restante caso ataque seja bloqueado= " + string(self.dmg_restante)
	+ "\n Deseja bloquear o ataque?";
draw_text(x, y, self.msg);
draw_self();