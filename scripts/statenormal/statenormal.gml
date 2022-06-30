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
	if (abs(xSpdTarget - xSpd) < currentAccel) xSpd = xSpdTarget;
	//gravity
	ySpd += global.grv;
	//jumping
	if (canJump-- > 0) && (jump) ySpd -= jumpSpd;
	//walljumping	
	if (walljump) {
		canWalljump++;
	} else canWalljump = 0;

	if (canWalljump >= 15) && (wallJumpPower) {
		if (canWalljump <= 60) ySpd = 0;
		else ySpd = global.grv*2.5;
		if (jump) {
			ySpd = -jumpSpd;
			if (left) xSpd = jumpSpd*2;
			if (right) xSpd = -jumpSpd*2;
		}
	}
	
	//double jumping
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
	
	if(canWalljump >= 15) && (wallJumpPower) sprite_index = sPlayerWallJump;
	
	//update coordinates
	x += xSpd;
	y += ySpd;
	
	//check for attacks
	switch (weapon) {
		case weapons.cane:
			if (slash) state = states.attackS;
			else if (thrust) state = states.attackT;
			break;
		case weapons.gun:
			var bullet
			if (slash || thrust) && (instance_number(oBullet) < 2) {
				if(image_xscale > 0) bullet = instance_create_layer(bbox_right,y-4,"Instances", oBullet);
				if(image_xscale < 0) bullet = instance_create_layer(bbox_left,y-4,"Instances", oBullet);
				bullet.shooter = id;
				bullet.bulletSpeed *= sign(image_xscale);
			}
			break;
		default:
			break;
	}
	
	//check hp
	if(hp <= 0) {
		state = states.dead;
	}
}
