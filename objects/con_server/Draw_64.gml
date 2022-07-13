/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_text(10, 10, "Players: " + string(ds_list_size(sockets)));
draw_text(10, 25, "Turno: " + string(self.turn_count));