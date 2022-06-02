/// @description Insert description here
// You can write your code in this editor

if (!is_local) { exit; }
draw_text(room_width/4, 50, "CARTAS NA MAO: " + string(hand_size));
draw_text(room_width/4, 80, "FASE DO TURNO: " + string(state));


if(card_selected != noone and instance_exists(card_selected)){
	draw_text(room_width/4, 110, "CARTA SELECIONADA: " + sprite_get_name(card_selected.sprite_index) + " - " + string(card_selected.card_type));
	
}


