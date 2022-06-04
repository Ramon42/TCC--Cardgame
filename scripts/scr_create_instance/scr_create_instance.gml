// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_instance(_project){
	var _aux;
	for (var i = 0; i < ds_list_size(con_client.player.hand); i++){
		if (con_client.player.hand[|i].card_subtype == SUBTYPE.ROBO){
			instance_destroy(con_client.player.hand[|i]);
			ds_list_delete(con_client.player.hand, i); //deleta carta da mão do jogador
			scr_show_hand();
			break;
		}
	}
	
	_aux = instance_create_depth(0, 0, -1, obj_robo);
	with (_aux){
		forca_var = _project.forca_var;
		forca_cons =  _project.forca_cons;

		escudo_var =  _project.escudo_var;
		escudo_cons =  _project.escudo_cons;

		energia_var =  _project.energia_var;
		energia_cons =  _project.energia_cons;

		voo = _project.voo;
	}
	array_push(_project, _aux);
}