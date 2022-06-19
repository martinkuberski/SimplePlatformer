switch (collide) {
	case 0:
		x += bulletSpeed;
		if(bulletSpeed < 0) image_xscale = -1;
		if(bulletSpeed > 0) image_xscale = 1;
		break;
	case 1:
		sprite_index = sImpact;
		if(animation_end()) instance_destroy();
		break;
	default:
		break;
}