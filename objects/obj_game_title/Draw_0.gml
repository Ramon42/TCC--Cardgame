/// @description Insert description here
// You can write your code in this editor


draw_self();

if (self.image_xscale == self.max_scale){
	self.increase = false;
}
if (self.image_xscale == self.min_scale){
	self.increase = true;
}

if (self.increase){
	self.image_xscale += 0.01;
	self.image_yscale += 0.01;
}
else if (!self.increase){
	self.image_xscale -= 0.01;
	self.image_yscale -= 0.01;
}

if (self.image_angle == self.max_ang){
	self.rot = false;
}
if (self.image_angle == self.min_ang){
	self.rot = true;
}
if (self.rot){
	self.image_angle += 0.25;
}
else if (!self.rot){
	self.image_angle -= 0.25;
}


