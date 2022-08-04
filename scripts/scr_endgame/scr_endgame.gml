// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_endgame(){
	if (con_client.player != noone and con_client.opponent != noone){
		if (con_client.player.vida_atual <= 0 or con_client.player.vida_atual > 11){
			var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
			_dica.text = "Sua vida chegou a 0, seu oponente venceu!";
			_dica.endgame = true;
			//scr_room(rm_endgame_lose);
		}
		else if (con_client.player.vida_atual > 0 and (con_client.opponent.vida_atual <= 0 or con_client.opponent.vida_atual > 11)){
			var _dica = instance_create_depth(0,0,0,obj_dicas_menu);
			_dica.text = "A vida de seu oponente chegou a 0, você venceu!";
			_dica.endgame = true;
			//scr_room(rm_endgame_win);
		}
	}
}