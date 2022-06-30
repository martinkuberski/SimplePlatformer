// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(){
	//collision
	if (place_meeting(x + xSpd, y, oWall)) {
		if (abs(xSpd) > 0.5) {
			xSpd *= 0.25;
			if (!place_meeting(x + xSpd, y, oWall)) x += xSpd;
		}
		xSpd = 0;
		if(id.object_index == oPlayer) walljump = 1;
	} else if(id.object_index == oPlayer) walljump = 0;
	if (place_meeting(x, y + ySpd, oWall)) {
		if (ySpd > 0) canJump = 5;
		if (doubleJump) canDoubleJump = 1;
		if (abs(ySpd) > 0.5) {
			ySpd *= 0.75;
			if (!place_meeting(x, y + ySpd, oWall)) y += ySpd;
		}
		ySpd = 0;
	}
}