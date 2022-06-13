// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_projects_energy(_sock, _sock_op){
	//aqui ele deve atualizar os projetos envolvidos na batalha e enviar para o cliente como um network novo
	buffer_seek(con_server.buffer, buffer_seek_start, 0);
	buffer_write(con_server.buffer, buffer_u8, network.atk_instance);
	var _data_projects = json_stringify(con_server.instances_server);
	buffer_write(con_server.buffer, buffer_string, _data_projects);
	network_send_packet(_sock, con_server.buffer, buffer_tell(con_server.buffer));
	network_send_packet(_sock_op, con_server.buffer, buffer_tell(con_server.buffer));
}