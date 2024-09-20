/// @description Insert description here
// You can write your code in this editor

//fazendo colisao horizontal
// verificar se esta colidindo
var _col  = instance_place(x + velh, y, obj_chao);

if(_col){
	
	//checando se esta indo para a direita
	if(velh > 0){
		// colando o personagem na parede 
		x = _col.bbox_left + (x - bbox_right);
	}
	
	//checando se esta indo para a esquerda
	if(velh < 0){
		x = _col.bbox_right + (x - bbox_left);
	}
	
	//quando colidir a velocide h sera 0
	
	velh = 0;
	
}

x += velh;

var _col  = instance_place(x, y + velv, obj_chao);

if(_col){
	
	
	if(velv > 0){
		// para baixo	
		y = _col.bbox_top + (y - bbox_bottom); 
	}
	

	if(velv < 0){
		//para cima
		y = _col.bbox_bottom + (y - bbox_top); 
	}
	
	velv = 0;
	
}


y += velv;