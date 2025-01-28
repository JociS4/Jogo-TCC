/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var caminho_arquivo = "dados.txt";

// Abre o arquivo para adicionar informações (cria se não existir)
var arquivo = file_text_open_append(caminho_arquivo);

// Adiciona novas informações ao arquivo
file_text_write_string(arquivo, "Jogador: " + string(irandom(10000)) +" - Pontuação: " + string(global.pontos)+", total de acertos: " + string(global.acertos) + ", total de erros: " + string(global.erros));
file_text_writeln(arquivo); // Pula para a próxima linha

// Fecha o arquivo após a escrita
file_text_close(arquivo);
//show_message("Informações adicionadas com sucesso!");

//instance_destroy();


/*
// Criar um struct contendo os dados do jogador
var player_data = {
    player_id: string(irandom(10000)),  // Gerando um ID aleatório
    score: global.pontos,               // Pontuação do jogador
    questions_correct: global.acertos,  // Número de acertos
    questions_incorrect: global.erros   // Número de erros
};

// Converter o struct em uma string no formato de x-www-form-urlencoded
var json_data = "player_id=" + player_data.player_id + "&score=" + string(player_data.score) + "&questions_correct=" + string(player_data.questions_correct) + "&questions_incorrect=" + string(player_data.questions_incorrect);

// Exibir os dados JSON para depuração
//show_message("Dados enviados: " + json_data);

// Enviar os dados para o servidor Flask
http_post_string("http://127.0.0.1:5000/save_data",json_data)
//http_post_string("https://servidordadosgamemaker.onrender.com/save_data", json_data);
*/

// Criar um struct contendo os dados do jogador
var player_data = {
    player_id: string(irandom(10000)),  // Gerando um ID aleatório
    score: global.pontos,               // Pontuação do jogador
    questions_correct: global.acertos,  // Número de acertos
    questions_incorrect: global.erros   // Número de erros
};

// Codificar os dados no formato x-www-form-urlencoded
var json_data = "player_id=" + player_data.player_id + 
                "&score=" + string(player_data.score) + 
                "&questions_correct=" + string(player_data.questions_correct) + 
                "&questions_incorrect=" + string(player_data.questions_incorrect);

// Enviar os dados para o servidor Flask
//http_post_string("http://127.0.0.1:5000/save_data",json_data)
http_post_string("https://servidordadosgamemaker.onrender.com/save_data", json_data);

instance_destroy();
