//keyboard
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var jump = keyboard_check_pressed(vk_space);
var dash = keyboard_check(vk_shift);


//horizontal movement - acceleration
xSpdTarget = (right - left) * walkSpd;
if dash {
	xSpdTarget *= dashMult;
	if(xSpd!=0) instance_create_layer(x,bbox_bottom,"Instances",oDust);
} 
if (xSpd < xSpdTarget) xSpd += currentAccel;
if (xSpd > xSpdTarget) xSpd -= currentAccel;
//gravity
ySpd += grv;
//jumping
if (canJump-- > 0) && (jump) ySpd -= jumpSpd;
if (canJump <= 0) && (canDoubleJump) && (ySpd > 0) && (jump) {
	ySpd = -jumpSpd;
	canDoubleJump = 0;	
}

//ice
if (place_meeting(x, y + ySpd, oIce)) currentAccel = iceAccel else currentAccel = accel;
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
	if (doubleJump) canDoubleJump = 1;
	if (abs(ySpd) > 0.5) {
		ySpd *= 0.75;
		if (!place_meeting(x, y + ySpd, oWall)) y += ySpd;
	}
	ySpd = 0;
}
//set coordinates and animation
if xSpd == 0 sprite_index = sPlayerIdle;
else if xSpd > 0 {
	sprite_index = sPlayerRun;
	image_xscale = 1;
}
else if xSpd < 0 {
	sprite_index = sPlayerRun;
	image_xscale = -1;
}
if(canJump <= 0) sprite_index = sPlayerJump;

x += xSpd;
y += ySpd;

