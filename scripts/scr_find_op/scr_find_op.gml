// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_op(_p){
	var _socs = ds_list_size(con_server.sockets);
	for (var i = 0; i < _socs; i++){
		if (con_server.clients[? con_server.sockets[|i]] != _p){
			return (con_server.clients[? con_server.sockets[|i]]);
		}
	}
}