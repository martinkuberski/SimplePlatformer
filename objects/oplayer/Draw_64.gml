//debug
/*draw_set_color(c_red);
draw_text(64,64,"xSpd: " + string(xSpd) + "\n" + "xSpdTarget: " + string(xSpdTarget) + "\n" + "currentAccel: " + string(currentAccel))*/

//needs changing to healthbar
//draw_set_color(c_red);
//draw_text(64, 64, "HP: " + string(hp));

if(state != states.menu) {
//healthbar
for(i = 0; i < ceil(hp/10); i++) {
	draw_sprite(guiHealthbarSquare, 0, 0.5*display_get_gui_width() - 0.5*168 + 4 + i*32, display_get_gui_height() - 32);
}
draw_sprite(guiHealthbarFrame, 0, 0.5*display_get_gui_width() - 0.5*168, display_get_gui_height() - 32);

if(key) draw_sprite_ext(sKey, 0, 64, 64, 4, 4, 0, c_white, 1);
//needs fixing
if (state == states.dead) {
	draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "You are dead! \n Press ENTER or Select to restart!");
}
}