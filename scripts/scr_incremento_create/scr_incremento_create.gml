// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_incremento_create(_robo, _incremento){
	var _menu = instance_create_depth(0, 0, -2, obj_incremento_menu);
	_menu.robo = _robo;
	_menu.incremento = _incremento;
	for (var i=0; i < array_length(_robo.sprite_list); i ++){
		if (_robo.sprite_list[i] == spr_card_energia1 or _robo.sprite_list[i] == spr_card_energia2 or
		_robo.sprite_list[i] == spr_card_escudo1_var or _robo.sprite_list[i] == spr_card_escudo2_var or 
		_robo.sprite_list[i] == spr_card_forca1_var or _robo.sprite_list[i] == spr_card_forca2_var){
			var _temp_obj = instance_create_depth(0, 0, -2, obj_card);
			_temp_obj.sprite_index = _robo.sprite_list[i];
			_temp_obj.image_xscale = 0.5;
			_temp_obj.image_yscale = 0.5;
			_temp_obj.depth = -4;
			scr_assign_stats(_temp_obj);
			ds_list_add(_menu.var_list, _temp_obj);
		}
	}
}