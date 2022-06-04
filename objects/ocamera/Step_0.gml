var zoom = keyboard_check_pressed(ord("Z"));

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
