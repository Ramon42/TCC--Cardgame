/// @description Insert description here
// You can write your code in this editor

if (con_client.player.state != PLAYERSTATE.BATTLE_PHASE){
	instance_destroy(self);
}