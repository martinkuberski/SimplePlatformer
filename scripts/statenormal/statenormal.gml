// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateNormal(){
	input();
	
	//horizontal accel
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
		//for single-use powerup:
		doubleJump = 0;
		//redundant, for multiple-use powerup (comment out the above line):
		canDoubleJump = 0;	
	}

	//ice
	if (place_meeting(x, y + ySpd, oIce)) currentAccel = iceAccel else currentAccel = accel;
	
	//set animation
	if xSpd == 0 sprite_index = currentSprite[0];
	else if xSpd > 0 {
		sprite_index = currentSprite[1];
		image_xscale = 1;
	}
	else if xSpd < 0 {
		sprite_index = currentSprite[1];
		image_xscale = -1;
	}
	if(canJump <= 0) sprite_index = currentSprite[2];
	
	collision();
	
	//update coordinates
	x += xSpd;
	y += ySpd;
	
	//check for attacks
	if(weapon == 1) {
		if (slash) state = states.attackS;
		else if (thrust) state = states.attackT;
	}
}
