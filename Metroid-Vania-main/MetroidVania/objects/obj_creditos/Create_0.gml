/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_stop_all();
audio_play_sound(snd_creditos,1,true)
// Texto dos créditos
creditos = [
	"Desenvolvido por: Jociel Andrade",
	"",
	"Pontuação: " + string(global.pontos),
	"Questões acertadas: " + string(global.acertos),
	"Questões erradas: " + string(global.erros),
	"",
    "Artitas das Sprites:",
	"Esqueleto: Jesse Munguia",
	"Player: Rvros",
	"Slime: Rvros",
	"Minotauro: Elthen",
	"Morte: Darkpixel-kronovi",
	"Tileset: Ansimuz",
	"",
    "Músicas:",
	"João Carlos",
	"Jociel Andrade",
    "",
    "Agradecimentos Especiais:",
	"Noneclass",
    "Amigos e Família",
    "Comunidade Game Maker",
    "",
    "Obrigado por jogar!"
];

// Posição inicial do texto
text_y = room_height; // Começa abaixo da tela
text_speed = 1;       // Velocidade de rolagem
line_spacing = 50;    // Espaçamento entre linhas