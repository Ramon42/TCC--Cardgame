// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_card(){
	/* funciona quando o jogador clica na carta */
	var _inst = noone;
	if (position_meeting(mouse_x, mouse_y, obj_card)){ 
		_inst = instance_position(mouse_x, mouse_y, obj_card);
	}
	if (position_meeting(mouse_x, mouse_y, obj_robo)){
		_inst = instance_position(mouse_x, mouse_y, obj_robo);
	}
	if (position_meeting(mouse_x, mouse_y, obj_classe_arma)){
		_inst = instance_position(mouse_x, mouse_y, obj_classe_arma);
	}
	if (position_meeting(mouse_x, mouse_y, obj_projeto)){
		_inst = instance_position(mouse_x, mouse_y, obj_projeto);
	}
	
	if(_inst != noone){
		con_client.player.card_selected = _inst;
		//show_debug_message("GETCARD: " + string(player.card_selected.sprite_index));
		scr_card_preview(con_client.player.card_selected);
		scr_get_card_bt(con_client.player.card_selected);
	}
	/*
	//até agora funciona quando o jogador passa o mouse sobre a carta
	if(instance_position(mouse_x, mouse_y, obj_card) != noone){
		var _inst;
		_inst = instance_position(mouse_x, mouse_y, obj_card);
		card_selected = _inst;
		scr_card_preview(card_selected);
	}
	*/
}