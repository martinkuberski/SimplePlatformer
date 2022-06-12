function stateNormalEnemy(){
	
	//'thinking' - better way to represent it using maths?
	timer++;
	if(timer == room_speed * 3 || timer == room_speed * 6) {right = choose(0,1); left = choose(0,1);} //every 3 sec
	if(timer == room_speed * 5) jump = choose(0,1); //every 5 sec decide whether to jump
	if(timer == room_speed * 6) {dash = choose(0,1); timer = 0} //every 6 sec decide whether to jump, also reset the timer
	//debug
	if(keyboard_check(ord("F"))) {left = 0; right = 0; dash = 0; jump = 1;}
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
	if (canJump-- > 0) && (jump) { ySpd -= jumpSpd; jump = 0;}

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
	
	//check hp
	if(hp <= 0) {
		state = states.dead;
		timer = 15*room_speed;
	}
}