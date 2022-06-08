function input(){
//keyboard
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space);
dash = keyboard_check(vk_shift);
slash = keyboard_check_pressed(ord("Q"));
thrust = keyboard_check_pressed(ord("E"));

//improve for more controls modability? 
if (left || right || jump || dash) {
	controller = 0;
}

//controller
if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2) {
	left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 1;
}

if (gamepad_button_check_pressed(0, gp_face1)) {
	jump = 1;
	controller = 1;
}

if (gamepad_button_check(0, gp_face3)) {
	dash = 1;
	controller = 1;
}

if (gamepad_button_check(0, gp_padl)) {
	left = 1;
	controller = 1;
}

if (gamepad_button_check(0, gp_padr)) {
	right = 1;
	controller = 1;
}

if (gamepad_button_check_pressed(0, gp_shoulderl)) {
	slash = 1;
	controller = 1;
}

if (gamepad_button_check_pressed(0, gp_shoulderr)) {
	thrust = 1;
	controller = 1;
}

}