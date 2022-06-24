//debug
/*draw_set_color(c_red);
draw_text(64,64,"xSpd: " + string(xSpd) + "\n" + "xSpdTarget: " + string(xSpdTarget) + "\n" + "currentAccel: " + string(currentAccel))*/

//needs changing to healthbar
draw_set_color(c_red);
draw_text(64, 64, "HP: " + string(hp));

//needs fixing
if (state == states.dead) {
	draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "You are dead! \n Press R or Select to restart!");
}