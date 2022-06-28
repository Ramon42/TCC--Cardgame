/// @description Insert description here
// You can write your code in this editor

draw_set_font(fn_padrao);
randomise();
global.rm_width = 1920;
global.rm_height = 1080;
global.fullscreen = false;


enum CARD {
	m_atacar1,
	m_atacar2,
	m_defender,
	m_refletir,
	m_agrupar_atacar,
	m_usar_arma,
	m_destruir_arma,
	m_explodir,
	m_inverter,
	m_voar,
	b_voo,
	v_energia1,
	v_energia2,
	v_escudo1,
	v_escudo2,
	c_escudo1,
	c_escudo2,
	v_forca1,
	v_forca2,
	c_forca1,
	c_forca2,
	c_forca3,
	c_forca4,
	v_incremento1,
	v_incremento2,
	v_decremento1,
	v_decremento2,
	robo,
	projeto,
	canhao,
	projeto_final,
	superclasse_atacar1,
	superclasse_atacar2,
	superclasse_defender1,
	superclasse_defender2,
	superclasse_voar,
	heranca
}