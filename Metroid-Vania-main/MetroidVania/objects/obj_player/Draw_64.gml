/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var xx = 50;

repeat(vida_atual){
	draw_sprite_ext(spr_vida, 0,xx, 55, 1, 1, image_angle, c_white, 1);
	xx += 50;
}
draw_set_font(fnt_pontuacao);
draw_text(1200, 45,"PONTOS: " + string(global.pontos));
draw_set_font(-1);
