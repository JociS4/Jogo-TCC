/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Caminho do arquivo (o arquivo será salvo na pasta de trabalho do jogo)
var caminho_arquivo = "dados.txt";

// Abre o arquivo para adicionar informações (cria se não existir)
var arquivo = file_text_open_append(caminho_arquivo);

// Adiciona novas informações ao arquivo
file_text_write_string(arquivo, "Jogador: " + string(irandom(10000)) +" - Pontuação: " + string(global.pontos)+", total de acertos: " + string(global.acertos) + ", total de erros: " + string(global.erros));
file_text_writeln(arquivo); // Pula para a próxima linha

// Fecha o arquivo após a escrita
file_text_close(arquivo);
