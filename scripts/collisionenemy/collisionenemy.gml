// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisionEnemy(){

	//collision
	if (place_meeting(x + xSpd, y, oWall)) {
		xSpd = 0;
		if(right == 1) right = 0;
		else if(right == 0) right = 1;
		if(left == 1) left = 0;
		else if(left == 0) left = 1;
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