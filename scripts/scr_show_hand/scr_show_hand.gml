// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_show_hand(){
	con_client.player.hand_size = ds_list_size(con_client.player.hand);
	if (con_client.player.hand_size <= 0){ exit; }
	for (i = 0; i < con_client.player.hand_size; i++){
		con_client.player.hand[|i].x = room_width*0.5+(100)*i;
		con_client.player.hand[|i].y = room_height;
		//hand[|i].y = room_height*0.9;
	}
}