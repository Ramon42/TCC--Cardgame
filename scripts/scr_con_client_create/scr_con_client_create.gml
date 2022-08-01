// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_con_client_create(_ip, _port){
	var _client = instance_create_layer(0, 0, "Instances", con_client);
	with(con_client){
		_client.connect = network_connect(_client.socket, _ip, real(_port));
	}
}