function stateAttack(type){
	//zero-ing movement
	xSpdTarget = 0;
	xSpd = 0;
	//ySpd = 0;
	
	//sprite storing variable - memory heavy approach?
	var spriteType = [0,0];
	var damage = 0;
	
	//set attack type variables
	switch(type) {
		case attackType.slash:
			spriteType = [sPlayerAttackSlashC, sPlayerAttackSlashCHB];
			damage = 2;
			break;
		case attackType.thrust:
			spriteType = [sPlayerAttackThrustC, sPlayerAttackThrustCHB];
			damage = 1;
			break;
		default:
			return 0;
	}
	
	//begin attack
	if (sprite_index != spriteType[0]) {
		sprite_index = spriteType[0];
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	mask_index = spriteType[1];
	
	//hit detection
		//a list for all the current hits and a variable storing the number of hits
	var hitByAttackCurrent = ds_list_create();
	var hits = instance_place_list(x,y,oEnemy,hitByAttackCurrent,false);
		//go through every current hit
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			var hitID = hitByAttackCurrent[| i];
			//if the hit instance isn't on the master list add it and apply the hit effect
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with (hitID) hitDMG(damage);
			}
		}
	}
	
	//cleanup
	ds_list_destroy(hitByAttackCurrent);
	mask_index = sPlayerIdleC;
	if(animation_end()) {
		sprite_index = sPlayerIdleC;
		state = states.normal;
	}
}