/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.timer = 60; // Tempo total em segundos (1 minuto)
horda_spawned = false; // Controla se a horda já foi criada
audio_stop_sound(snd_background);
audio_play_sound(snd_prova_final,1,0)
function criar_horda() {
    //game over forçado, criando horda de inimigo
	
	var _posx = 30; // Posição inicial x
	var _posy = 255;  // Posição inicial y
	var _incremento = 30; // Diferença de posição entre os objetos
	var _inimigos = 18; // Quantidade de inimigos 
	for (var i = 0; i < _inimigos; i++) {
		instance_create_layer(_posx + (i * _incremento), _posy, "inimigos", obj_boss_morte);
	}
}