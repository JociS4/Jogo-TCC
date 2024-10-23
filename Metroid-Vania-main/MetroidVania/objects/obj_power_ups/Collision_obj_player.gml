/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//desbloqueando nova habilidade
global.power_ups[indice] = true;

if (!global.dialogo_ativo) {
    meu_dialogo = instance_create_layer(x, y, layer, obj_dialogo);
    meu_dialogo.perguntas = mensagem; // Passa as perguntas para o objeto de diálogo
    meu_dialogo.pergunta_atual = 0;    // Inicia na primeira pergunta
    global.dialogo_ativo = true;
}

instance_destroy();