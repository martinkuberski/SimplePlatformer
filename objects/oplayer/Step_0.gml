var reset = keyboard_check_pressed(ord("R"));
if(gamepad_button_check_pressed(0, gp_select)) {
	reset = 1;
	controller = 1;
}

//weapon sprite (ineffective: how to reduce the number of checks? Change at pickup?)
switch (weapon) {
	case weapons.none:
		currentSprite = spriteIdle;
		break;
	case weapons.cane:
		currentSprite = spriteCane;
		break;
	case weapons.gun:
		currentSprite = spriteGun;
		break;
	default:
		currentSprite = spriteIdle;
		break;
}


//state machine
switch (state) {
	case states.normal:
		stateNormal();
		break;
	case states.attackS:
		stateAttack(attackType.slash);
		break;
	case states.attackT:
		stateAttack(attackType.thrust);
		break;
	case states.dead:
		sprite_index = currentSprite[3];
		if(animation_end()) image_speed = 0;
		ySpd += global.grv;
		collision();
		y += ySpd;
		break;
	default:
		stateNormal();
		break;
}

if(hitflash > 0) hitflash--;
/*var bigK = keyboard_check_pressed(ord("F"));
if(bigK) {
	switch (big) {
		case 0:
			big = 1;
			image_xscale *= 3;
			image_yscale *= 3;
		break;
		case 1:
			big = 0;
			image_xscale /= 3;
			image_yscale /= 3;
		break;
		default:
			big = 0;
			image_xscale = 1;
			image_yscale = 1;
	}
} 
*/

if reset game_restart();


