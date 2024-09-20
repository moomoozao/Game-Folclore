var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle); 

var tam_menu = array_length(menu_inical);
for(var i = 0; i < tam_menu; i++){
	
	var _wgui = display_get_gui_width();
	var _hgui = display_get_height();
	
	var _hstr = string_height("I");
	var _wstr = string_width(menu_inical[i]);
	
	var _x1 = _wgui/2 - _wstr / 2;
	var _y1 = _hgui/2 - _hstr /2 + _hstr*i //superior esquerda
	
	var _x2 = _wgui/2 + _wstr / 2;
	var _y2 = _hgui/2 + _hstr /2 + _hstr*i //inferior direita
	
	if(point_in_rectangle(_mx,_my,_x1,_y1,_x2,_y2)){
		esc[i] = lerp(esc[i], 1.4, 0.15);
		
		if(mouse_check_button_pressed(mb_left)){
			switch menu_inical[i]{
				case menu_inical[0]: //jogar
					room_goto(Room1);
					break;
					
				case menu_inical[1]: //Opções
					show_message("Ainda tem que configurar");
					break;
					
				case menu_inicial[2]: // Sair
					game_end();
					break;
					
			}
		}
		
	}
	else{
		esc[i] = lerp(esc[i], 1, 0.15);	
	}
	
	draw_text_transformed(_wgui/2, _hgui/2 + _hstr*i, menu_inical[i], esc[i], esc[i], 0);
}

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1); 