/// @description Insert description here
// You can write your code in this editor

if (!is_local) { exit; }
draw_text(room_width/1.5, 50, "CARTAS NA MAO OPONENTE: " + string(hand_size_op));

if(card_selected != noone){
	draw_text(room_width/1.5, 100, "CARTA SELECIONADA OPONENTE: " + sprite_get_name(card_selected.sprite_index));
}