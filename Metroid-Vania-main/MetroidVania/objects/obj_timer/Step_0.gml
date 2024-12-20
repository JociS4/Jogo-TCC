/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Reduz o tempo a cada frame
if (global.timer > 0) {
    global.timer -= 1 / room_speed; // Decrementa baseado no room_speed
} else {
    global.timer = 0;
	
	audio_stop_sound(snd_prova_final)
	room_goto(Room5)
	obj_player.x = 100;
	obj_player.y = 100;
}

// Quando o tempo atingir 30 segundos
if (!horda_spawned && global.timer <= 30) {
    horda_spawned = true;
    // Chama a função para criar a horda de inimigos
    criar_horda();
}

