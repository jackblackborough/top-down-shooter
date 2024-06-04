
getDamaged(oDamageEnemy);

if (hp <= 0) {
	
	global.enemyKillCount++;
	
	instance_destroy();
	
	var _chance = irandom(100);
		
	if _chance > 99{
		
		instance_create_depth(x, y, depth, oHeart );		
	}
}
