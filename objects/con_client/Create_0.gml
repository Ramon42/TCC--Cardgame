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
project_list = array_create(0);
classes_list = array_create(0);
instance_list = array_create(0);
player_proj = array_create(0);

deck = noone; 

enum network { //enumerar ações possiveis para enviar para o servidor
	init,
	start_player,
	second_player,
	start_turn,
	update,
	update_projects,
	update_class,
	update_instances,
	draw_card,
	create_project,
	create_class,
	create_instance,
	send_edit_project,
	deal_damage,
	atk_instance,
	atk_instance2,
	explode,
	invert,
	increment,
	atk_animation,
	def_menu,
	instance_dmg_calc,
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