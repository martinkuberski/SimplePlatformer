switch (state) {
	case states.normal:
		stateNormal();
	case states.attack:
		stateAttack();
}


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





