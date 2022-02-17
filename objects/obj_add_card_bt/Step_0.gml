/// @description  BOTÃO PARA ADICIONAR QUALQUER CARTA QUE VÁ DENTRO DE UMA CLASSE
// You can write your code in this editor

if (!con_client.player.create_project) { 
	instance_destroy(self);
	exit;
}
if (mouse_check_button_released(mb_left)){
	if(position_meeting(mouse_x, mouse_y, self)){
		show_message("ADICIONADO");
		
	}
}