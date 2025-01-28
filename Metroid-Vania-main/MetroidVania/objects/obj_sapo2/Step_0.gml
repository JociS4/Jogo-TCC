// STEP
// Checar se o jogador está próximo e pressionou 'E' para iniciar o diálogo

if (room == Room1){
	if(global.pontos >= 25){
		perguntas = [
			["Sua pontuação é de " + string(global.pontos), 0],
			["Muito boa a pontuação, você ganhou o bonus de vida",0]
		];
	}
	else if (global.pontos < 25){
		perguntas = [
			["Sua pontuação é de " + string(global.pontos), 0],
			["Você não se saiu muito bem",0]
		];
	}
}
else if(room == Room3){
	if(global.pontos >= 70){
		perguntas = [
			["Sua pontuação é de " + string(global.pontos) + ", Parabéns", 0],
			["Você venceu todos os desafios desse castelo, agora você pode ir embora e desfrutar desse conhecimento adquirido", 0]
		];

	}
	else if (global.pontos < 70){
		perguntas = [
			["Sua pontuação é de " + string(global.pontos), 0],
			["Você não foi muito bem, então está na hora de fazer a prova FINAL",0],
			["Se conseguir superar o desafio você poderá escapar desse castelo. É bem simples basta apenas sobreviver até o tempo acabar",0],
			["prepare-se para o seu último desafio",0]
		];
	}
}


if (distance_to_object(obj_player) <= 10) {
	
	if (obj_player.x > x) {
		image_xscale = 1;
	} else {
	    image_xscale = -1;
	}
    if (keyboard_check_pressed(ord("E")) && !global.dialogo_ativo) {
        meu_dialogo = instance_create_layer(x, y, layer, obj_dialogo);
        meu_dialogo.perguntas = perguntas; // Passa as perguntas para o objeto de diálogo
        meu_dialogo.pergunta_atual = 0;    // Inicia na primeira pergunta
        global.dialogo_ativo = true;
    }
}


// Verificar se o diálogo foi finalizado
if (!global.dialogo_ativo && meu_dialogo != noone) {
    // Se o NPC deve ser destruído após o diálogo
	
    if (destruir) {
		if(global.pontos >= 70 && room == Room3 && instance_exists(obj_sapo2)){
			
			room_goto(Room5)
			obj_player.x = 100;
			obj_player.y = 100;
			
			//var tran = instance_create_layer(0, 0, layer, obj_transicao);
			//tran.destino = Room4;
			//tran.destino_x = 320;
			//tran.destino_y = 200;
		}
		
		if(global.pontos < 70 && room == Room3 && instance_exists(obj_sapo2)){
			
			room_goto(Room4)
			obj_player.x = 320;
			obj_player.y = 200;
			
			//var tran = instance_create_layer(0, 0, layer, obj_transicao);
			//tran.destino = Room4;
			//tran.destino_x = 320;
			//tran.destino_y = 200;
		}
        instance_destroy();
    }
	
    // Limpar a referência ao objeto de diálogo para evitar checagens adicionais
    meu_dialogo = noone;
}

