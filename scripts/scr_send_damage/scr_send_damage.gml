// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_damage(_inst){
	var _dmg;
	if (_inst.forca_var > _inst.forca_cons) { _dmg = _inst.forca_var; }
	else { _dmg = _inst.forca_cons; }
	show_message("ENVIOU DANO");
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.deal_damage);
	buffer_write(con_client.buffer, buffer_u8, _dmg);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}