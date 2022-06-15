// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_def_choice(_sock_op, _atk_id, _def_id, _dmg = 0){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, network.def_menu);
	buffer_write(buffer, buffer_u8, _atk_id);
	buffer_write(buffer, buffer_u8, _def_id);
	buffer_write(buffer, buffer_u8, _dmg);
	network_send_packet(_sock_op, buffer, buffer_tell(buffer));

}