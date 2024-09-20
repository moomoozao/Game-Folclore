/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// se estou usando a sprite de dano e a animação acabou, eu morro

if (sprite_index == spr_inimigo1_dano){
	//Indo para sprite de morte
	morto = true;
}

if (sprite_index == spr_inimigo1_dead){
	image_speed = 0;
	image_index = 3;
}