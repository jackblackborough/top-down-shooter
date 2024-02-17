if (place_meeting(x, y, oDamageEnemy)) 
{
	var _inst = instance_place(x, y, oDamageEnemy);
	
	
	// Get a list of damage instances
	var _instanceList = ds_list_create();
	
	instance_place_list(x, y, oDamageEnemy, _instanceList, false);
	var _listSize = ds_list_size(_instanceList);
	
	for (var _i = 0; _i < _listSize; _i++) 
	{
		var _instance = ds_list_find_value(_instanceList, _i);
		
		hp -= _instance.damage;
	
		_instance.destroy = true;
	}
	
	ds_list_destroy(_instanceList);
}

if (hp <= 0) {
	instance_destroy();
}