/// @description Insert description here
// You can write your code in this editor


//NAO CRIAR O DECK AQUI, E TODOS OBJETOS SÃO CRIADOS PELO CON_SERVER AO SE CONECTAR

socket = network_create_socket(network_socket_tcp);
global.socket = socket;
buffer = buffer_create(1024, buffer_grow, 1);
connect = network_connect(socket, "127.0.0.1", PORT);
server_socket = noone;


if (connect < 0){
	show_message("SERVIDOR NAO ENCONTRADO");
	game_restart();
}

//
opponent = noone;
player = noone;
project_list = [];
player_proj = [];

deck = noone; 

enum network { //enumerar ações possiveis para enviar para o servidor
	init,
	update,
	update_projects,
	draw_card,
	create_project,
	send_edit_project,
	entity,
	create_opponent,
	update_opponent,
	start_game,
	create_deck,
	wait,
	get_draw_card,
	play_card,
	pass_turn
}