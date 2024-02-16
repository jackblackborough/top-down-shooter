if (place_meeting(x, y, oDamageEnemy)) 
{
	var _inst = instance_place(x, y, oDamageEnemy);
	
	// Take damage from instance of bullet/object/etc
	
	hp -= _inst.damage;
	
	_inst.destroy = true;
}

if (hp <= 0) {
	instance_destroy();
}