// STEP
// Gerenciar animação de digitação
if (pergunta_atual < array_length_1d(perguntas)) {
    // Definir tipo de pergunta (0 = diálogo normal, 1 = quiz)
    tipo_pergunta = perguntas[pergunta_atual][1]; // Obtém o tipo da pergunta
    if (tipo_pergunta == 1) {
        texto = perguntas[pergunta_atual][0];  // Pergunta atual
        
        // Embaralha as opções de resposta apenas se não foi feito ainda
        if (!opcoes_embaralhadas) {
            var _respostas = perguntas[pergunta_atual][2];
            var _num_opcoes = array_length_1d(_respostas);
            
            // Criar um array de índices para embaralhar
            var _indices = [];
			
            for (var i = 0; i < _num_opcoes; i++) {
                array_push(_indices, i);
            }

            // Embaralhar os índices usando o algoritmo de Fisher-Yates
            for (var i = _num_opcoes - 1; i > 0; i--) {
                var j = irandom(i); // Pega um índice aleatório
                var _temp = _indices[i];
                _indices[i] = _indices[j];
                _indices[j] = _temp;
            }

            // Criar o array de opções embaralhadas
            opcoes = [];
            for (var i = 0; i < _num_opcoes; i++) {
                array_push(opcoes, _respostas[_indices[i]]);
            }
            
            // Guardar a resposta correta (presumindo que a resposta correta original é a primeira)
            resposta_correta = _respostas[0]; // A resposta correta original
            opcoes_embaralhadas = true; // Marca que as opções foram embaralhadas
        }
    } 
	else {
        texto = perguntas[pergunta_atual][0]; // Diálogo normal
        opcoes = []; // Limpa opções para diálogos normais
        opcoes_embaralhadas = false; // Reseta para o próximo quiz
    }

    // Animação de digitação da pergunta
    if (keyboard_check_pressed(ord("E")) && letra <= tamnho_texto) {
        letra = tamnho_texto;  // Exibir a pergunta toda de uma vez
    }
    
    tamnho_texto = string_length(texto);
    if (letra <= tamnho_texto) {
        palavra = string_copy(texto, 1, letra);
        letra++;
    } 
	else {
        // Quando a pergunta foi exibida completamente, verifica o tipo
        if (tipo_pergunta == 1) {
            mostrar_opcoes = true; // Exibir opções se for um quiz
        } 
		else {
            // Para diálogos normais, aguarda o jogador pressionar 'E'
            if (keyboard_check_pressed(ord("E"))) {
                finalizar_dialogo = true; // Marca para avançar à próxima pergunta no próximo ciclo
            }
        }
    }
} 
else {
    // Finalizar diálogo se todas as perguntas foram exibidas
    finalizar_dialogo = true;
}

// Finaliza o diálogo quando apropriado
if (finalizar_dialogo) {
    // Se ainda há perguntas para mostrar
    if (pergunta_atual < array_length_1d(perguntas)) {
        // Avança para a próxima pergunta
        pergunta_atual++;
        letra = 0; // Reinicia a animação de digitação
        mostrar_opcoes = false; // Reseta opções para a próxima pergunta
        resposta_selecionada = 0; // Reseta a resposta selecionada
        finalizar_dialogo = false; // Reseta a variável para evitar finalização imediata
        opcoes_embaralhadas = false; // Reseta a variável para permitir novo embaralhamento na próxima pergunta
        resposta_correta = ""; // Reseta a resposta correta para a próxima pergunta
    } 
	else {
        // Se não há mais perguntas, destrói o objeto
        instance_destroy();
		//global.pontos = 0;
        global.dialogo_ativo = false;
    }
}

// Navegação pelas opções
if (mostrar_opcoes) {
    if (keyboard_check_pressed(vk_up)) {
        resposta_selecionada = max(0, resposta_selecionada - 1); // Subir nas opções
    }
    if (keyboard_check_pressed(vk_down)) {
        resposta_selecionada = min(array_length_1d(opcoes) - 1, resposta_selecionada + 1); // Descer nas opções
    }
    
    // Confirmar a seleção
    if (keyboard_check_pressed(vk_enter)) {
        // Processar a resposta
        if (opcoes[resposta_selecionada] == resposta_correta) { // Verifica se a resposta selecionada é a correta
            show_message("Resposta correta!");
            global.pontos += 10;
        } else {
            show_message("Resposta errada!");
        }
        
        // Ir para a próxima pergunta ou finalizar
        pergunta_atual++;
        if (pergunta_atual >= array_length_1d(perguntas)) {
            instance_destroy();
			//global.pontos = 0;
            global.dialogo_ativo = false;
        } 
		else {
            letra = 0;
            mostrar_opcoes = false;
            resposta_selecionada = 0;
            opcoes_embaralhadas = false; // Reseta para o próximo embaralhamento
            resposta_correta = ""; // Reseta a resposta correta para a próxima pergunta
        }
    }
}
