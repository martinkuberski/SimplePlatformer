function menuDraw(text){
	draw_set_font(fontMenu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_black);
	if(text == menuText) draw_text(guiX/2, guiY/2 - font_get_size(fontMenu)*3, "Main Menu");
	if(text == menuTextOptions) draw_text(guiX/2, guiY/2 - font_get_size(fontMenu)*3, "To change controls, press slash, thrust, or ENTER and input the desired buttons or press ESC for unassigned");
	
	for (var i = 0; i < array_length(text); i++) {
		if(i == menuSelect) {
			draw_set_color(c_white);
			draw_text(guiX/2, guiY/2 + font_get_size(fontMenu)*i*1.5, text[i]);
			draw_set_color(c_black);
		}
		else draw_text(guiX/2, guiY/2 + font_get_size(fontMenu)*i*1.5, text[i]);
		if(i == menuSelected) {
			draw_set_color(c_red);
			draw_text(guiX/2, guiY/2 + font_get_size(fontMenu)*i*1.5, text[i]);
			draw_set_color(c_black);
		}
	}
}