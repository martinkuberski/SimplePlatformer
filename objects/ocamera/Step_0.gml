var zoom = keyboard_check_pressed(ord("Z"));
if (gamepad_button_check_pressed(0, gp_face4)) {
	zoom = 1;
	oPlayer.controller = 1;
}

if (zoom) {
	if(xSize == 640 && ySize == 360) {
	xSize = 320;
	ySize = 180;
	} else {
	xSize = 640;
	ySize = 360;
	}
}

camera_set_view_size(cam, camera_get_view_width(cam) + zoomSpd * (xSize - camera_get_view_width(cam)), camera_get_view_height(cam) + zoomSpd * (ySize - camera_get_view_height(cam)));

if (instance_exists(follow)) {
	xTarget = follow.x;
	yTarget = follow.y;
}

x += camSpd * (xTarget - x);
y += camSpd * (yTarget - y);

camera_set_view_pos(cam, x - camera_get_view_width(cam)/2, y - camera_get_view_height(cam)/2);

//Parallax
if(layer_exists("Mountains")) layer_x("Mountains", x * 0.5); 
if(layer_exists("Trees")) layer_x("Trees", x * 0.25);