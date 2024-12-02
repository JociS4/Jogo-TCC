/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Cor de fundo da tela de créditos
draw_clear(c_black);
// Defina a fonte e cor do texto
draw_set_font(fnt_menu); // Certifique-se de ter uma fonte configurada
draw_set_color(c_white);

// Desenhe as linhas do texto
var _y = text_y;
for (var i = 0; i < array_length(creditos); i++) {
    draw_text(room_width /2 + 50 , _y, creditos[i]);
    _y += line_spacing;
}

// Atualize a posição do texto
text_y -= text_speed;

// reiniciar ao fim dos créditos
if (text_y + line_spacing * array_length(creditos) < 0) {
   game_restart()
}
