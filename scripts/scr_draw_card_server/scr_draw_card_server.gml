// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_draw_card_server(_sock, _num, _p){
	var _card = noone;
	for (i = 0; i < _num; i++){
		with(deck_server){
			if(ds_list_size(cards_in_deck) > 0){
				_card = ds_list_find_value(cards_in_deck, 0);
				ds_list_delete(cards_in_deck, 0);
				deck_size = ds_list_size(cards_in_deck);
			}
			else { break; }
		}
		//atualiza tamanho da mão do jogador
		_p.hand_size ++;
		//envia info pro jogador que comprou a carta
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, network.draw_card);
		buffer_write(buffer, buffer_u8, _card);
		network_send_packet(_sock, buffer, buffer_tell(buffer));
	}
}
