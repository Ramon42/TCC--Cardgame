// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_edit_project_create(_project, _bool){ //arrumar, caso seja o oponente tentando editar o projeto,
													//deve-se criar um objeto para as cartas antes
	instance_create_depth(0, 0, -2, obj_edit_project_menu);
	if(!_project.created){ //não adiciona objetos toda hora que clicar em editar
		_project.created = true;
		var _objs = ds_list_create();
		obj_edit_project_menu.projeto = _project;
		show_debug_message("ARRAY DE SPRITES EM PROJETO>>> " + string(_project.sprite_list));
		for (var i=0; i < array_length(_project.sprite_list); i ++){
			var _temp_obj = instance_create_depth(0, 0, -2, obj_card);
			_temp_obj.sprite_index = _project.sprite_list[i];
			_temp_obj.image_xscale = 0.5;
			_temp_obj.image_yscale = 0.5;
			_temp_obj.depth = -3;
			ds_list_add(_objs, _temp_obj);
			scr_assign_stats(_temp_obj);
			ds_list_add(obj_edit_project_menu.card_list, _temp_obj);
		}
		_project.cards_in_project = _objs;
	}
	else{
		for(var i = 0; i < ds_list_size(_project.cards_in_project); i++){
			ds_list_add(obj_edit_project_menu.card_list, _project.cards_in_project[|i]);
		}
	}
	
	obj_edit_project_menu.belongs_to_player = _bool;
	_project.x = obj_edit_project_menu.col4;
	_project.y = obj_edit_project_menu.lin3;
	_project.depth = -3;
	_project.image_xscale = 1.75;
	_project.image_yscale = 1.75;
	obj_edit_project_menu.alarm[0] = 1;
}