/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left)){
	if (!con_client.player.criou_projeto){
		if(position_meeting(mouse_x, mouse_y, self)){
			con_client.player.create_project = true;
			instance_create_depth(0, 0, -1, obj_create_class_menu);
			var _dica = instance_create_depth(0 ,0 ,0 ,obj_dicas_menu);
			_dica.text = "Adicione cartas de Variável, Constante e Método da sua mão ao projeto. (Lembre-se que todo projeto deve conter, no mínimo, a variável -Int Energia para poder ser criado)";
			instance_destroy(self);
			//scr_debug_hand();
		}
		if(position_meeting(mouse_x, mouse_y, obj_card)){
			instance_destroy(self);
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
if (con_client.player.state != PLAYERSTATE.MAIN_PHASE1){
	instance_destroy(self);
}