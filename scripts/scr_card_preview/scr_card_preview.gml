// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_card_preview(_card_selected){
	with(obj_card_preview){ instance_destroy(); }
	with(obj_action_bt_parent){ instance_destroy(); }
	var _preview = instance_create_depth(150, 200, -3, obj_card_preview);
	_preview.show_text = _card_selected.texto_auxiliar;
	_preview.sprite_index = _card_selected.sprite_index;
	_preview.image_xscale = 2;
	_preview.image_yscale = 2;
}