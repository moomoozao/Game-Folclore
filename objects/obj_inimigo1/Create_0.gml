/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited(); 

//Personailizando as variaveis
// ele escolhe para q lado ele ira andar

vel = choose(1, -1);

andando = choose(true, false);

if (andando){
	if (andando){
		velh = choose(vel, -vel);
	}
	
	else{
		velh = 0;
	}
}

//tempo para decidir se vai andar  (1 segundo = room speed)
tempo_decidir_andar = room_speed * 3; 
