/// @description Insert description here
// You can write your code in this editor

draw_self();
self.msg = "Dano recebido= " + string(self.atk_recebido) + "\nEscudo= " 
	+ string(self.escudo) + "\nDano restante caso ataque seja bloqueado= " + string(self.dmg_restante)
	+ "\nDeseja bloquear o ataque?";
draw_text_ext(x, y, self.msg, 30, 500);