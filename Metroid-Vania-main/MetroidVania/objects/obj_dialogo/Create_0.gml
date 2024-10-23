// CREATE
// Variáveis para o diálogo
texto = "";
palavra = "";
letra = 1;
tamnho_texto = 0;

// Controle do quiz
opcoes = [];
resposta_selecionada = 0;
mostrar_opcoes = false;

// Perguntas do NPC
perguntas = [];    // Este será preenchido pelo `obj_npc`
pergunta_atual = 0;

// Variável para controlar se devemos finalizar o diálogo
finalizar_dialogo = false;

// Variável para armazenar a resposta correta
resposta_correta = ""; // Inicialização

// Variável para armazenar se as opções já foram embaralhadas
opcoes_embaralhadas = false;