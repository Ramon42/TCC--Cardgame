// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
1 = escudo2
2 = projeto
3 = forca2
4 = robo
5 = atacar(objeto)
6 = defender(ataque)
7 = energia 2
8 = voar()
*/
function scr_atribuir_sprite(_val){
	switch(_val){
		case 1:
			return spr_card_escudo2_var;
			break;
		case 2:
			return spr_card_projeto;
			break;
		case 3:
			return spr_card_forca2_var;
			break;
		case 4:
			return spr_card_robo;
			break;
		case 5:
			return spr_card_atacar;
			break;
		case 6:
			return spr_card_defender;
			break;
		case 7:
			return spr_card_energia2;
			break;
		case 8:
			return spr_card_voar;
			break;
	}

}