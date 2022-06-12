//weapon sprite (ineffective: how to reduce the number of checks? Change at pickup?)
switch (weapon) {
	case 0:
		currentSprite = spriteIdle;
		break;
	case 1:
		currentSprite = spriteCane;
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





