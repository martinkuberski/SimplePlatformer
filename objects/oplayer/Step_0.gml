var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var jump = keyboard_check_pressed(vk_space);
var dash = keyboard_check(vk_shift);

//horizontal movement
xSpd = (right - left) * walkSpd;
if dash xSpd *= dashMult;
//gravity
ySpd += grv;
//jumping
if (canJump-- > 0) && (jump) ySpd -= jumpSpd;
//collision
if (place_meeting(x + xSpd, y, oWall)) {
	if (abs(xSpd) > 0.5) {
		xSpd *= 0.25;
		if (!place_meeting(x + xSpd, y, oWall)) x += xSpd;
	}
	xSpd = 0;
}
if (place_meeting(x, y + ySpd, oWall)) {
	if (ySpd > 0) canJump = 5;
	if (abs(ySpd) > 0.5) {
		ySpd *= 0.75;
		if (!place_meeting(x, y + ySpd, oWall)) y += ySpd;
	}
	ySpd = 0;
}
//set coordinates
x += xSpd;
y += ySpd;

