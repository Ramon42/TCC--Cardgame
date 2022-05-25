/// @description Insert description here
// You can write your code in this editor

if (self.move_card == true){
	scr_set_project_to_move(); //CHAMAR ESSE SCRIPT EM UM LUGAR QUE NÃO FIQUE SE REPETINDO
	if (mouse_check_button(mb_left)){
		self.x = mouse_x;
		self.y = mouse_y;
		//instance_destroy(obj_edit_project_menu);
		//instance_destroy(obj_class_menu_parent_bt);
		//abrir um menu ao lado do projeto aberto, contendo projetos (esse menu pode ser aberto junto do principal quando o jogador selecionar editar projeto)
		//para mover a carta, lixeira (jogar a carta fora) e cancelar
		//usar algum tipo de highlight atrás do projeto quando a carta 
		//passar por cima dele, para avisar o jogador o alvo atual
	}
	else{ //ao soltar o botão do mouse a carta volta para pos original
		
	}
}
