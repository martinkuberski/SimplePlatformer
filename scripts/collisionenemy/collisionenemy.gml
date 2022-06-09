// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisionEnemy(){

	//collision
	if (place_meeting(x + xSpd, y, oWall)) {
		xSpd *= -1;
		xSpdTarget *= -1;
	}
	if (place_meeting(x, y + ySpd, oWall)) {
		if (ySpd > 0) canJump = 5;
		if (abs(ySpd) > 0.5) {
			ySpd *= 0.75;
			if (!place_meeting(x, y + ySpd, oWall)) y += ySpd;
		}
		ySpd = 0;
	}
}