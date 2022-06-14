/// @description Insert description here
// You can write your code in this editor


self.dmg_restante = self.atk_recebido - self.escudo;
if (self.dmg_restante < 0){ self.dmg_restante = 0; }