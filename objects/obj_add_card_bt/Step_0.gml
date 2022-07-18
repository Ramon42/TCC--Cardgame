/// @description  BOTÃO PARA ADICIONAR QUALQUER CARTA QUE VÁ DENTRO DE UMA CLASSE
// You can write your code in this editor

if (!con_client.player.create_project and !con_client.player.edit_project) { 
	instance_destroy(self);
	exit;
}

if (mouse_check_button_released(mb_left)){
	if(!position_meeting(mouse_x, mouse_y, self) and (!position_meeting(mouse_x, mouse_y, obj_ok_bt))){
		instance_destroy(self);
	}
}