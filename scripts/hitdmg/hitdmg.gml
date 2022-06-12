function hitDMG(dmg){
	if(state != states.dead) {
		if(hitflash == 0) {
			hitflash = 15;
			hp -= dmg;
		}
	}
}