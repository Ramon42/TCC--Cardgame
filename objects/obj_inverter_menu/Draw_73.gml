/// @description Insert description here
// You can write your code in this editor

draw_text(x, y - self.y/4, "Selecione duas Variáveis para inverter o valor:");
if (ds_list_size(self.var_list) >= 1){
	self.var_list[|0].x = self.x - self.x/4;
	self.var_list[|0].y = self.y;
}

if (ds_list_size(self.var_list) >= 2){
	self.var_list[|1].x = self.x + self.x/4;
	self.var_list[|1].y = self.y;
}

if (ds_list_size(self.var_list) == 3){
	self.var_list[|2].x = self.x;
	self.var_list[|2].y = self.y;
}