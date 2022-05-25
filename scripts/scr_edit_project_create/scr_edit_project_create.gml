// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_edit_project_create(_project, _bool){ //arrumar, caso seja o oponente tentando editar o projeto,
													//deve-se criar um objeto para as cartas antes
	instance_create_layer(0, 0, "Menu_edit_project", obj_edit_project_menu);
	if(!_project.created){ //não adiciona objetos toda hora que clicar em editar
		_project.created = true;
		obj_edit_project_menu.projeto = _project;
		for (var i=0; i < array_length(_project.sprite_list); i ++){
			var _temp_obj = instance_create_layer(0, 0, "Menu_edit_project", obj_card);
			_temp_obj.sprite_index = _project.sprite_list[i];
			array_push(_project.obj_list, _temp_obj);
			scr_assign_stats(_temp_obj);
			ds_list_add(obj_edit_project_menu.card_list, _temp_obj);
		}
	}
	else{
		show_debug_message("passou pelo else");
		for(var i = 0; i < array_length(_project.obj_list); i++){
			show_debug_message("entrou no for");
			ds_list_add(obj_edit_project_menu.card_list, _project.obj_list[i]);
		}
	}
	
	obj_edit_project_menu.belongs_to_player = _bool;
	_project.x = obj_edit_project_menu.col4;
	_project.y = obj_edit_project_menu.lin3;
	_project.depth = -2;
	_project.image_xscale = 3.5;
	_project.image_yscale = 3.5;
	obj_edit_project_menu.alarm[0] = 60;
}