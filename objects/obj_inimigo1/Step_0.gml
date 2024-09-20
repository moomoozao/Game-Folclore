/// @description Inserir descrição aqui
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (morto){
	
	sprite_index = spr_inimigo1_dead;
	//Sumindo se acabou a animação
	if (image_speed <= 0){
		image_alpha -= 0.01;
	}
	
	// Se eu sumi totalmente eu me destruo
	if (image_alpha <= 0){
		instance_destroy();
	}
	exit;
} 
//chacando se o inimigo esta no chão 


var _chao = place_meeting(x, y + 1, obj_chao);

if (_chao)
{
	//Vou diminuir o tempo de decidir andar
	tempo_decidir_andar -= 1;
	
	if (tempo_decidir_andar <= 0){
		andando = choose(true, false);
		//resetando o tempo
		 
		
		//Escolhendo a direção
		if (andando){
			velh = choose(vel, -vel);
		}
		else{
			velh = 0;
		}
		
		//room_speed = 1 segundo
		tempo_decidir_andar = room_speed * 3;
	
	}
	
	
	//controlando a animação do inimigo
	if(velh != 0 && dano == false){
		sprite_index = spr_inimigo1_run
		image_xscale = sign	(velh);
	}
	else{
		sprite_index = spr_inimigo1_idle
	}

	//Se bater na parede muda de direção
	if(place_meeting(x + velh,  y, obj_chao)){
		velh *= -1;
	}
	//Se ele nao pode cair, ent quando for cair muda de direção
	if (pode_cair == false)
	{
		if(place_meeting(x + (velh * 10), y + 1, obj_chao) == false)
		{
			//Se eu nao posso cair e nao to tocando no chao na minha frente 
			// ent eu mudo de direcao
			velh *= -1; 
		}
	}
}

else
{
	velv += grav;
	//velh = 0;
	
	if(velh !=0){
		image_xscale = sign(velh);
		
	}
}

//Checando se eu estou tomando dano
if(dano && morto == false){
	sprite_index = spr_inimigo1_dano;
	velh = 0;
}


