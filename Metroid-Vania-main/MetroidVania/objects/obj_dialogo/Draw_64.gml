// DRAW GUI
// Desenho da caixa de diálogo
var _guiw = display_get_gui_width();
var _guih = display_get_gui_height();
var _escala_x = _guiw / sprite_get_width(spr_caixa);
var _escala_y = (_guih * .2) / sprite_get_height(spr_caixa);
var _margem = string_height("I");
var _yy = _guih - (_escala_y * sprite_get_height(spr_caixa));

draw_sprite_ext(spr_caixa, 0, 0, _yy, _escala_x, _escala_y, 0, c_white, 1);

// Desenho da pergunta atual
draw_set_font(fnt_dialogo);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(_margem, _yy + _margem, palavra, _margem, _guiw - _margem);
draw_set_color(-1);

// Desenho das opções de resposta
if (mostrar_opcoes) {
    var _opcao_y = _yy - _margem - 120; // Ajusta a posição para cima da caixa
    for (var i = 0; i < array_length_1d(opcoes); i++) {
        var _cor_opcao = (i == resposta_selecionada) ? c_yellow : c_white;
        draw_set_color(_cor_opcao);
        draw_text(_margem, _opcao_y, opcoes[i]);
        _opcao_y += 30; // Espaçamento entre opções
    }
    draw_set_color(-1);
}

draw_set_font(-1);
