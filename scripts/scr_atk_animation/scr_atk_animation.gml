// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_atk_animation(_atk_id, _def_id){
	var _atk;
	var _def;
	var _ang;
	
	for (var i = 0; i < array_length(con_client.instance_list); i++){
		if (con_client.instance_list[i, 2].inst_id == _atk_id){
			_atk = con_client.instance_list[i, 2];
		}
		else if (con_client.instance_list[i, 2].inst_id == _def_id){
			_def = con_client.instance_list[i, 2];
		}
	}
	with(_atk){
		_ang = (point_direction(self.x, self.y, _def.x, _def.y))-90;
		self.pth = path_duplicate(pth_test);
		path_rotate(self.pth, _ang);
		self.atk_path = false;
	}
	
}