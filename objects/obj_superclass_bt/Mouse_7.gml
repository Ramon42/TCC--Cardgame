/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, self)){
	var _superclass = instance_create_depth(0, 0, -2, obj_projeto);
	switch(con_client.player.card_selected.card_subtype){
		case SUBTYPE.SUPERCLASSE_ATACAR1:
			_superclass.abstract = true;
			_superclass.sprite_list = [spr_card_forca1_var, spr_card_energia2, spr_card_atacar1];
			_superclass.forca_var = 1;
			_superclass.energia = 2;
			_superclass.atacar_1 = true;
			scr_send_project(_superclass);
		break;
		case SUBTYPE.SUPERCLASSE_ATACAR2:
			_superclass.abstract = true;
			_superclass.sprite_list = [spr_card_forca2_var, spr_card_energia1, spr_card_atacar1];
			_superclass.forca_var = 2;
			_superclass.energia = 1;
			_superclass.atacar_1 = true;
			scr_send_project(_superclass);
		break;
		case SUBTYPE.SUPERCLASSE_DEFENDER1:
			_superclass.abstract = true;
			_superclass.sprite_list = [spr_card_escudo1_var, spr_card_energia2, spr_card_defender];
			_superclass.escudo_var = 1;
			_superclass.energia = 2;
			_superclass.defender = true;
			scr_send_project(_superclass);
		break;
		case SUBTYPE.SUPERCLASSE_DEFENDER2:
			_superclass.abstract = true;
			_superclass.sprite_list = [spr_card_escudo2_var, spr_card_energia1, spr_card_defender];
			_superclass.escudo_var = 2;
			_superclass.energia = 1;
			_superclass.defender = true;
			scr_send_project(_superclass);
		break;
		case SUBTYPE.SUPERCLASSE_VOAR:
			_superclass.abstract = true;
			_superclass.sprite_list = [spr_card_voo, spr_card_energia1, spr_card_voar];
			_superclass.voo = false;
			_superclass.energia = 1;
			_superclass.voar = true;
			scr_send_project(_superclass);
		break;
	}
	instance_destroy(_superclass);
	instance_destroy(self);
}