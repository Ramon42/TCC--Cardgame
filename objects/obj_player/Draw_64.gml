/// @description Insert description here
// You can write your code in this editor

if (!is_local) { exit; }
draw_text(room_width/4, 50, "CARTAS NA MAO: " + string(hand_size));

if(card_selected != noone and instance_exists(card_selected)){
	draw_text(room_width/4, 100, "CARTA SELECIONADA: " + sprite_get_name(card_selected.sprite_index) + " - " + string(card_selected.card_type));
	
}