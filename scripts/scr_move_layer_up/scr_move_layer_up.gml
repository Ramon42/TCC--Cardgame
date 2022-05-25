// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_layer_up(_obj){ //move a camada do objeto parametro para uma superior e tamanho original
	_obj.depth = -10;
	_obj.image_xscale = 1;
	_obj.image_yscale = 1;
}