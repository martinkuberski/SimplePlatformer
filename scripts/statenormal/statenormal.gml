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
	ySpd += global.grv;
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
	switch (weapon) {
		case weapons.cane:
			if (slash) state = states.attackS;
			else if (thrust) state = states.attackT;
			break;
		case weapons.gun:
			var bullet;
			if (slash || thrust) {
				if(image_xscale > 0) bullet = instance_create_layer(bbox_right,y-4,"Instances", oBullet);
				if(image_xscale < 0) bullet = instance_create_layer(bbox_left,y-4,"Instances", oBullet);
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
