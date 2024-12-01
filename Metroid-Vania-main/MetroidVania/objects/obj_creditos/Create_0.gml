/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Texto dos créditos
creditos = [
	"Pontuação: " + string(global.pontos),
	"Questões acertadas: " + string(global.acertos),
	"Questões erradas: " + string(global.erros),
	"",
    "Desenvolvido por: Seu Nome",
    "Programação: Outro Nome",
    "Arte: Artista",
    "Música: Compositor",
    "",
    "Agradecimentos Especiais:",
    "Amigos e Família",
    "Comunidade Game Maker",
    "",
    "Obrigado por jogar!"
];

// Posição inicial do texto
text_y = room_height; // Começa abaixo da tela
text_speed = 1;       // Velocidade de rolagem
line_spacing = 50;    // Espaçamento entre linhas