/// @description Insert description here
// You can write your code in this editor

if (con_client.player.state != PLAYERSTATE.MAIN_PHASE1 and con_client.player.state != PLAYERSTATE.MAIN_PHASE2){
	instance_destroy(self);
}