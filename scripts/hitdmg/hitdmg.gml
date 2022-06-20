function hitDMG(dmg){
var dmgNum;
	if(state != states.dead) {
		if(hitflash == 0) {
			hitflash = 15;
			hp -= dmg;
			dmgNum = instance_create_layer(x, bbox_top - 10,"Instances",oDmgNumber);
			dmgNum.damage = dmg;
			dmgNum.target = id;
			
		}
	}
}