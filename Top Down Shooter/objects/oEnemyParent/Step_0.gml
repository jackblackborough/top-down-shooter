
getDamaged(oDamageEnemy);

if (hp <= 0) {
	
	global.enemyKillCount++;
	
	instance_destroy();
}
