// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_edit_project_create_new(_project, _bool){
	var _menu = instance_create_depth(0, 0, -2, obj_edit_project_menu);
	var _objs = ds_list_create();
	_menu.projeto = _project;
	for (var i=0; i < array_length(_project.sprite_list); i ++){
		var _temp_obj = instance_create_depth(0, 0, -2, obj_card);
		_temp_obj.sprite_index = _project.sprite_list[i];
		_temp_obj.image_xscale = 0.5;
		_temp_obj.image_yscale = 0.5;
		_temp_obj.depth = -3;
		ds_list_add(_objs, _temp_obj);
		scr_assign_stats(_temp_obj);
		ds_list_add(_menu.card_list, _temp_obj);
	}
	_menu.projeto.cards_in_project = _objs;
	
	_menu.belongs_to_player = _bool;
	_menu.projeto.x = _menu.col4;
	_menu.projeto.y = _menu.lin3;
	_menu.projeto.depth = -3;
	_menu.projeto.image_xscale = 1.75;
	_menu.projeto.image_yscale = 1.75;
	_menu.alarm[0] = 1;
}