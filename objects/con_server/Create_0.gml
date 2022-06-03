/// @description Insert description here
// You can write your code in this editor

#macro PORT		8080
#macro MAX_CLIENTS 2


server = network_create_server(network_socket_tcp, PORT, MAX_CLIENTS);
buffer = buffer_create(1024, buffer_grow, 1);
clients = ds_map_create();
sockets = ds_list_create();
projects_server = [];
turn_player = noone;

/* da pra fazer assim com um obj_player_base, problema= estruturado impede + de 2 jogadores
player1 = instance_create_layer(); // player1 também é o servidor
player2 = instance_create_layer();
*/

deck_server = instance_create_layer(0, 0, "Instances", obj_deck_server);
with(deck_server){ scr_create_deck(); }
