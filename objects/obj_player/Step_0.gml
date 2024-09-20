/// @description Insert description here
// You can write your code in this editor

/*
var near = layer_get_id("fundo_5");
var stillNear = layer_get_id("fundo_4");
var distant = layer_get_id("fundo_3");
var forAway = layer_get_id("fundo_2");

layer_x(near,      lerp(0, camera_create_view_x(view[0]),  0.5) );
layer_x(stillNear, lerp(0, camera_create_view_x(view[0]),  0.7) );
layer_x(distant,   lerp(0, camera_create_view_x(view[0]), 0.85) );
layer_x(forAway,   lerp(0, camera_create_view_x(view[0]),  0.9) );
*/

// controlando o player

if(keyboard_check(vk_f1)){
	room_goto(Menu);
}



var _chao = place_meeting(x, y + 1, obj_chao);

var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump); 

if(timer_dano <= 0 ){
	
	velh = (_right - _left) * vel;
}


// Pulando 

if(_chao){
	
	if(_jump){ 
		velv = -vel_jump;	
	}
	
	if(velh !=0){
		sprite_index = spr_player_run;
		
		//rodar a sprite para a direção 
		image_xscale = sign(velh); 
	}
	else{
		sprite_index = spr_player_idle;
	}
	
} 
// não esta no chao
else  {
		if (velv < 0){
			sprite_index = spr_player_jump;
		}
		else{
			sprite_index = spr_player_fall;
			
			//Se eu estou caindo, posso dar dano no inimigo
			var _inimigo = instance_place(x, y + 5, obj_inimigo_pai);
			
			// Se cair no inimigo
			if(_inimigo){
				dano = false;
				//Se o imingo nao ta morto
				if(_inimigo.morto == false){
					
					//Subo no ar novamente
					velv = -vel_jump
				
					// Avisando o inimigo que eu acertei que ele tomou dano
					_inimigo.dano = true;
				}
			}
			
		}
		
		// aplico a gravidade
		velv += grav;
		
		if(velh!= 0){
			
		image_xscale = sign(velh); 
		
		}
	}
	
show_debug_message(global.life);

if artefato=2
{
	room_goto_next()
}

if(dano){
	sprite_index= spr_player_hit;
}

if (timer_dano > 0 ){
	timer_dano--;
}
else{
	dano = false;
}

if (inv_timer > 0){
	inv_timer--;
	
	image_alpha = .5
}
else
{
	image_alpha=  1
}
//Tomando dano
var _inimigo = instance_place(x, y, obj_inimigo_pai);


if(_inimigo && inv_timer <= 0){
	
	
	if(_inimigo.morto == false && _inimigo.dano == false){
		dano = true;
		global.life--;
		timer_dano	= tempo_dano;
		inv_timer	= inv_tempo;
	}
}