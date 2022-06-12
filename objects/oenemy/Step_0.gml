switch (state) {
	case states.normal:
		stateNormalEnemy();
		break;
	case states.dead:
		sprite_index = currentSprite[3];
		timer--;
		if(animation_end()) image_speed = 0;
		if(timer == 0) instance_destroy();
		ySpd += global.grv;
		collisionEnemy();
		y += ySpd;
		break;
	default:
		stateNormalEnemy();
		break;
}

if(hitflash > 0) hitflash--;