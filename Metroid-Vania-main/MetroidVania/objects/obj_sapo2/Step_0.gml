// STEP
// Checar se o jogador está próximo e pressionou 'E' para iniciar o diálogo

if (room == Room1){
	if(global.pontos >= 40){
		perguntas = [
			["Sua pontuação é de " + string(global.pontos), 0],
			["Muito boa a pontuação, você ganhou o bonus de vida",0]
		];
	}
	else if (global.pontos < 40){
		perguntas = [
			["Sua pontuação é de " + string(global.pontos), 0],
			["Vc não se saiu muito bem",0]
		];
	}
}
else if(room == Room3){
	if(global.pontos >= 70){
		perguntas = [
			["Sua pontuação é de " + string(global.pontos) + ", Parabens", 0],
			["Muito boa a pontuação, você ganhou o bonus de vida",0]
		];

	}
	else if (global.pontos < 70){
		perguntas = [
			["Sua pontuação é de " + string(global.pontos), 0],
			["Vc não foi muito bem",0],
			["prepare-se para mais um desafio",0]
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
		if(global.pontos < 70 && room == Room3 && instance_exists(obj_sapo2)){
			var _posx = 1500; // Posição inicial x
		    var _posy = 255;  // Posição inicial y
		    var _incremento = 10; // Diferença de posição entre os objetos
		    for (var i = 0; i < 20; i++) {
		        instance_create_layer(_posx + (i * _incremento), _posy + (i * _incremento / 2), "instances", obj_boss_morte);
		    }
			//instance_create_layer(1500, 255,"instances", obj_boss_morte)
		}
        instance_destroy();
    }
	
    // Limpar a referência ao objeto de diálogo para evitar checagens adicionais
    meu_dialogo = noone;
}

