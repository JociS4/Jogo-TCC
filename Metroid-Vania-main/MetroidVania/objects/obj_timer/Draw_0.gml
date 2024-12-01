/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_color(c_red);
draw_set_font(fnt_pontuacao);
draw_text(220, 100, "Tempo restante: " + string(floor(global.timer)) + "s");
draw_set_color(-1);
draw_set_font(-1);