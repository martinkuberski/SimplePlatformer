draw_set_font(fontMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);

for (var i = 0; i < array_length(menuText); i++) {
	if(i == menuSelect) {
		draw_set_color(c_white);
		draw_text(guiX/2, guiY/2 + font_get_size(fontMenu)*i*1.5, menuText[i]);
		draw_set_color(c_black);
	}
	else draw_text(guiX/2, guiY/2 + font_get_size(fontMenu)*i*1.5, menuText[i]);
}