/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

audio_stop_sound(snd_background);
// Reduz o tempo a cada frame
if (global.timer > 0) {
    global.timer -= 1 / room_speed; // Decrementa baseado no room_speed
} else {
    global.timer = 0;
	
	room_goto(Room5)
	obj_player.x = 100;
	obj_player.y = 100;
}

// Quando o tempo atingir 40 segundos
if (!horda_spawned && global.timer <= 40) {
    horda_spawned = true;
    // Chama a função para criar a horda de inimigos
    criar_horda();
}

