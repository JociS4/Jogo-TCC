/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();

// Desenhar mensagem de interação se o jogador estiver perto
if (distance_to_object(obj_player) <= 8 && desenhar_texto == true) {
	draw_sprite(spr_e,image_index,x, y -25);
}