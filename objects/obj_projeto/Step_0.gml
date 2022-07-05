/// @description Insert description here
// You can write your code in this editor

self.texto_auxiliar = "";
if (self.forca_var != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int var Força= " + string(self.forca_var) + "\n";
}
else if (self.forca_cons != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int cons Força= " + string(self.forca_cons)+ "\n";
}
if (self.escudo_var != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int var Escudo= " + string(self.escudo_var)+ "\n";
}
else if (self.escudo_cons != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int cons Escudo= " + string(self.escudo_cons)+ "\n";
}
if (self.energia != 0){
	self.texto_auxiliar = self.texto_auxiliar + "-int var Energia= " + string(self.energia)+ "\n";
}
if (self.voo != noone){
	self.texto_auxiliar = self.texto_auxiliar + "-bool var Voo= " + string(self.voo)+ "\n";
}
if (self.voar){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Voar()\n";
}
if (self.atacar_1){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Atacar(Objeto)\n";
}
if (self.atacar_2){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Atacar(Objeto, Objeto)\n";
}
if (self.defender){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Defender(Ataque)\n";
}
if (self.refletir){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Refletir(Ataque)\n";
}
if (self.explodir){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Explodir(Objeto)\n";
}
if (self.inverter){
	self.texto_auxiliar = self.texto_auxiliar + "-Método Inverter(Var, Var)\n";
}
if (self.usar_arma){
	self.texto_auxiliar = self.texto_auxiliar + "-Método UsarArma()\n";
}


//metodo incremento
if (self.incr_decr){
	instance_destroy(obj_incr_decr_bt);
	scr_incremento_create(self, self.last_card, self.del_card_in_hand);
	self.incr_decr = false;
}
//

if (mouse_check_button_released(mb_left)){
	if (position_meeting(mouse_x, mouse_y, self) and !con_client.player.edit_project and !con_client.player.create_project and (con_client.player.state == PLAYERSTATE.MAIN_PHASE1 or con_client.player.state == PLAYERSTATE.MAIN_PHASE2)){
		con_client.player.card_selected = noone;
		with(obj_card_preview){ instance_destroy(); }
		instance_destroy(obj_action_bt_parent);
		self.selected = true;
		
		if (!self.final){
			edit_project_bt = instance_create_depth(0, 0, -1, obj_edit_project_bt);
		}
		//checar se existe uma carta de robô na mão do jogador para poder criar o botão de criar instancia
		if (player_socket == con_client.server_socket and !self.abstract) {
			for (var i = 0; i < ds_list_size(con_client.player.hand); i++){
				if (con_client.player.hand[|i].card_subtype == SUBTYPE.ROBO){
					create_instance_bt = instance_create_depth(0, 0, -1, obj_create_instance_bt);
					break;
				}
			}
		}
		

		
	}
	
	else if (position_meeting(mouse_x, mouse_y, obj_card)){
		self.selected = false;
		if (instance_exists(edit_project_bt)){ 
			instance_destroy(edit_project_bt); 
			instance_destroy(create_instance_bt);
		}
	}
	
	if (position_meeting(mouse_x, mouse_y, self.edit_project_bt) and !con_client.player.edit_project){
		con_client.player.edit_project = true;
		show_message("SPRITES = " + string(self.sprite_list));
				//checa se o projeto é do jogador ou do oponente (caso do oponente, só
								//pode usar cartas como incremento e decremento)
		if (self.player_socket == con_client.server_socket) {
			instance_destroy(self.edit_project_bt);
			instance_destroy(self.create_instance_bt);
			show_message("O PROJETO PERTENCE AO JOGADOR");
			//scr_edit_project_create(self, true);
			scr_edit_project_create_new(self, true);
		}
		else {
			instance_destroy(self.edit_project_bt);
			instance_destroy(self.create_instance_bt);
			show_message("O PROJETO PERTENCE AO OPONENTE");
			//scr_edit_project_create(self, false);
			scr_edit_project_create_new(self, false);
		}
		
	}
	
	if (position_meeting(mouse_x, mouse_y, self.create_instance_bt)){
			instance_destroy(self.edit_project_bt);
			instance_destroy(self.create_instance_bt);
			scr_send_instance(self); //enviar i para saber a posição da carta projeto na mão do jogador
			scr_call_update();
			show_message("CRIANDO INSTANCIA DO PROJETO");
			
	}
}

col = x - aux_x*0.75;

lin_for = y-aux_y/6;;
lin_esc = y+aux_y/6;