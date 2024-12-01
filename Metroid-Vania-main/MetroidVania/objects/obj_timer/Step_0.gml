/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Reduz o tempo a cada frame
if (global.timer > 0) {
    global.timer -= 1 / room_speed; // Decrementa baseado no room_speed
} else {
    global.timer = 0;
	obj_player.estado = "morte"
}

// Quando o tempo atingir 40 segundos
if (!horda_spawned && global.timer <= 40) {
    horda_spawned = true;
    // Chama a função para criar a horda de inimigos
    criar_horda();
}

