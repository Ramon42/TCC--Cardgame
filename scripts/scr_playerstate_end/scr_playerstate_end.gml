// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerstate_end(){
	con_client.player.state = PLAYERSTATE.ENEMY_TURN;
	buffer_seek(con_client.buffer, buffer_seek_start, 0);
	buffer_write(con_client.buffer, buffer_u8, network.pass_turn);
	network_send_packet(con_client.socket, con_client.buffer, buffer_tell(con_client.buffer));
}