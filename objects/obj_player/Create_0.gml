/// @description Insert description here
// You can write your code in this editor

velh		= 0;
velv		= 0;
vel			= 3
grav		= .4;
vel_jump	= 6;

dano		= false;
tempo_dano	= room_speed * 0.5;
timer_dano	= 0;

inv_tempo	= room_speed * 2;
inv_timer	= 0;

global.life		= 2;

moeda = 0;
artefato = 0;

inputs	= {
		left : ord("A"),
		right : ord("D"),
		jump : vk_space,
}

