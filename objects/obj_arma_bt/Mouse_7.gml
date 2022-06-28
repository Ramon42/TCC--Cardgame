/// @description Insert description here
// You can write your code in this editor


if (con_client.player.card_selected != noone){
	var _class = instance_create_depth(0, 0, 0, obj_classe_arma);
	switch (con_client.player.card_selected.card_subtype){
		case SUBTYPE.CANHAO:
			_class.type = SUBTYPE.CANHAO;
			_class.sprite = spr_card_classe_canhao;
			_class.dano = 8;
			_class.recarregar = 5;
			break;
	}
	scr_send_class(_class);
	var pos = ds_list_find_index(con_client.player.hand, con_client.player.card_selected);
	instance_destroy(con_client.player.card_selected);
	ds_list_delete(con_client.player.hand, pos);
	con_client.player.card_selected = noone;
	instance_destroy(_class);
}