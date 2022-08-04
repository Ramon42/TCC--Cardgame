/// @description Insert description here
// You can write your code in this editor

if (instance_position(mouse_x, mouse_y, self) or self.selected){
	draw_sprite_ext(spr_card_highlight, 0, self.x, self.y, self.image_xscale, self.image_yscale, 0, c_white, 0.8);
}
if (self.voo){ image_angle = 90; }
else { image_angle = 0; }
if (self.inst_sock_id != con_client.server_socket){
	image_angle = 180;
}

draw_self();

if (self.attacking1 or self.attacking2){
	draw_sprite_ext(spr_card_highlight_atk, 0, self.x, self.y, self.image_xscale, self.image_yscale, 0, c_white, 0.8);
}

if (self.defending){
	draw_sprite_ext(spr_card_highlight_def, 0, self.x, self.y, self.image_xscale, self.image_yscale, 0, c_white, 0.8);
}
