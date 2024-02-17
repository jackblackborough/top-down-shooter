
function getDamagedCreate(_hp = 10) 
{
	hp = _hp;
	
	damageList = ds_list_create();
}

function getDamagedCleanup() 
{
	ds_list_destroy(damageList);
}

function getDamaged( _damageObject ) {
	
	if (place_meeting(x, y, _damageObject)) 
	{
		// Get a list of damage instances
		var _instanceList = ds_list_create();
	
		instance_place_list(x, y, _damageObject, _instanceList, false);
		var _listSize = ds_list_size(_instanceList);
	
		for (var _i = 0; _i < _listSize; _i++) 
		{
			var _instance = ds_list_find_value(_instanceList, _i);
		
			// Check if this instance is in the damage list
			if (ds_list_find_index(damageList, _instance) == -1) {		
			
				ds_list_add(damageList, _instance);
			
				hp -= _instance.damage;
				_instance.hitConfirm = true;
			}
		}
	
		ds_list_destroy(_instanceList);
	}

	// Clear damage list of objects that don't exist
	var _damageListSize = ds_list_size(damageList);
	for (var _i = 0; _i < _damageListSize; _i++) {
		var _instance = ds_list_find_value(damageList, _i);
	
		if (!instance_exists(_instance) || !place_meeting(x, y, _instance)) {
			ds_list_delete(damageList, _i);
			_i--;
			_damageListSize--;
		}
	}

}