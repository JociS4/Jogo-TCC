// CREATE
// Define perguntas e respostas em um array 2D
// numero 0 e para dialogos normais
// numero 1 e para dialagos com escolhas 
//["Perguntas/Dialogos", definição para dialogo ou quizz, ["Alternativas caso seja 1"]]
perguntas = [];

// Estado de interação
global.dialogo_ativo = false;
meu_dialogo = noone;
cor = c_white;
desenhar_texto = false;
destruir = false;