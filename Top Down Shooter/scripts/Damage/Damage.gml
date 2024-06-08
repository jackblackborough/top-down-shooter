
function getDamagedCreate(_hp = 10, _iframes = false) 
{
	maxHp = _hp;
	hp = _hp;
	if (_iframes == true) 
	{
		iframeTimer = 0;
		iframeNumber = 90;		
	}
	
	if (_iframes == false) 
	{
		damageList = ds_list_create();
	}
}

function getDamagedCleanup() 
{
	ds_list_destroy(damageList);
}

function getDamaged(_damageObject, _iframes = false ) 
{
	if (_iframes == true && iframeTimer > 0) 
	{
		iframeTimer--;
		
		if (iframeTimer % 8 == 0) {
			if (image_alpha == 1) {
				image_alpha = 0;
			} else {
				image_alpha = 1;
			}
		}
		hp = clamp(hp, 0, maxHp);
		exit;
	}
	
	image_alpha = 1;
	
	if (place_meeting(x, y, _damageObject))
	{
		
		// Get a list of damage instances
		var _instanceList = ds_list_create();
	
		instance_place_list(x, y, _damageObject, _instanceList, false);
		var _listSize = ds_list_size(_instanceList);
		
		var _hitConfirm = false;
	
		for (var _i = 0; _i < _listSize; _i++) 
		{
			var _instance = ds_list_find_value(_instanceList, _i);
		
			// Check if this instance is in the damage list
			if (_iframes == true || ds_list_find_index(damageList, _instance) == -1) {		
			
				if (_iframes == false) {
					ds_list_add(damageList, _instance);
				}
							
				hp -= _instance.damage;
				
				_hitConfirm = true;
				
				_instance.hitConfirm = true;
			}
		}
		
		if (_iframes == true &&_hitConfirm == true) {
			iframeTimer = iframeNumber;
			create_screen_pause(20);
			screen_shake(7);
		}
		
	
		ds_list_destroy(_instanceList);
	}

	// Clear damage list of objects that don't exist
	if (_iframes == false) {
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
	
	
}

function screen_shake( _amount = 7){
	
with(oCamera){
	
xShakeAmount = _amount;
yShakeAmount = _amount;
	
}
	
}