function stateNormalEnemy(){
	
	//'thinking' - better way to represent it using maths?
	timer++;
	if(timer == room_speed * 3 || timer == room_speed * 6) xSpdTarget = choose(-1,0,1) * walkSpd; //every 3 sec
	if(timer == room_speed * 5) jump = choose(0,1); //every 5 sec decide whether to jump
	if(timer == room_speed * 6) {dash = choose(0,1); timer = 0} //every 6 sec decide whether to jump, also reset the timer
	
	//horizontal accel
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
	if (canJump <= 0) && (ySpd > 0) && (jump) {
		ySpd = -jumpSpd;
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
	
	collisionEnemy();
	
	//update coordinates
	x += xSpd;
	y += ySpd;
}