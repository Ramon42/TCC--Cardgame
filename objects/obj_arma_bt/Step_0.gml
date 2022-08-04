/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_released(mb_left)){
	if (!con_client.player.criou_projeto){
		if(position_meeting(mouse_x, mouse_y, self)){
			if (con_client.player.card_selected != noone){
				var _class = instance_create_depth(0, 0, 0, obj_classe_arma);
				switch (con_client.player.card_selected.card_subtype){
					case SUBTYPE.CANHAO:
						_class.type = SUBTYPE.CANHAO;
						_class.sprite = spr_card_classe_canhao;
						_class.dano = 5;
						_class.recarregar = 3;
						_class.recarregar_count = 3;
						break;
						
					case SUBTYPE.BLASTER:
						_class.type = SUBTYPE.BLASTER;
						_class.sprite = spr_card_classe_blaster;
						_class.dano = 4;
						_class.recarregar = 2;
						_class.recarregar_count = 2;
						break;
						
					case SUBTYPE.RAILGUN:
						_class.type = SUBTYPE.RAILGUN;
						_class.sprite = spr_card_classe_railgun;
						_class.dano = 8;
						_class.recarregar = 5;
						_class.recarregar_count = 5;
						break;
				}
				scr_send_class(_class);
				scr_call_update();
				var pos = ds_list_find_index(con_client.player.hand, con_client.player.card_selected);
				instance_destroy(con_client.player.card_selected);
				ds_list_delete(con_client.player.hand, pos);
				con_client.player.card_selected = noone;
				instance_destroy(_class);
				instance_destroy(obj_card_preview);
				instance_destroy(self);
			}
		}
	}
	else if (!position_meeting(mouse_x, mouse_y, obj_ok_bt)){
		var _dica = instance_create_depth(0 ,0 ,0 ,obj_dicas_menu);
		_dica.text = "O jogador já criou uma Classe neste turno!";
	}
}
else if (mouse_check_button_pressed(mb_left)){
	if(!position_meeting(mouse_x, mouse_y, self) and (!position_meeting(mouse_x, mouse_y, obj_ok_bt))){
		instance_destroy(self);
	}
}