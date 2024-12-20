// STEP
// Checar se o jogador está próximo e pressionou 'E' para iniciar o diálogo


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
		if(global.pontos >= 25 && room == Room1 && instance_exists(obj_sapo)){
			//obj_player.vida_atual += 2;
			var _vida1 = instance_create_layer(427, 80, "sensores", obj_vida);
			_vida1.image_xscale = 0.388;
			_vida1.image_yscale = 0.406;
			_vida1.vida = 2;
			
			
		}
		if(global.pontos >= 70 && room == Room3 && instance_exists(obj_sapo)){
			var _vida2 = instance_create_layer(1163, 180, "sensores", obj_vida);
			_vida2.image_xscale = 0.388;
			_vida2.image_yscale = 0.406;
			_vida2.vida = 3;
		}
        instance_destroy();
    }
	
    // Limpar a referência ao objeto de diálogo para evitar checagens adicionais
    meu_dialogo = noone;
}
