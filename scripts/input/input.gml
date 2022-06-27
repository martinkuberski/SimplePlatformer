function input(){
//keyboard
left = keyboard_check(global.kLeft[0]) || keyboard_check(global.kLeft[1]);
right = keyboard_check(global.kRight[0]) || keyboard_check(global.kRight[1]);
down = keyboard_check_pressed(global.kDown[0]) || keyboard_check_pressed(global.kDown[1]);
up = keyboard_check_pressed(global.kUp[0]) || keyboard_check_pressed(global.kUp[1]);
jump = keyboard_check_pressed(global.kJump[0]) || keyboard_check_pressed(global.kJump[1]);
dash = keyboard_check(global.kDash[0]) || keyboard_check(global.kDash[1]);
slash = keyboard_check_pressed(global.kSlash[0]) || keyboard_check_pressed(global.kSlash[1]);
thrust = keyboard_check_pressed(global.kThrust[0]) || keyboard_check_pressed(global.kThrust[1]);
zoom = keyboard_check_pressed(global.kZoom[0]) || keyboard_check_pressed(global.kZoom[1]);

//check if works
if (keyboard_check_pressed(vk_anykey)) {
	controller = 0;
}

//controller
if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2) {
	left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 1;
}

if (abs(gamepad_axis_value(1, gp_axislv)) > 0.2) {
	down = abs(min(gamepad_axis_value(0, gp_axislv), 0));
	up = max(gamepad_axis_value(0, gp_axislv), 0);
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

if (gamepad_button_check(0, gp_padu)) {
	up = 1;
	controller = 1;
}

if (gamepad_button_check(0, gp_padd)) {
	down = 1;
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