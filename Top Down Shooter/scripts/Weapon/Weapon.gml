
function create_weapon(
	_sprite,
	_length,
	_bullet_obj,
	_cooldown,
	_bulletNum = 1,
	_spread = 0,
	_pickupSprite = sDefaultFire
	
) constructor {	
	sprite = _sprite;
	length = _length;
	bulletObj = _bullet_obj;
	cooldown = _cooldown;
	bulletNum = _bulletNum;
	spread = _spread;
	pickupSprite = _pickupSprite;
}

global.PlayerWeapons = array_create(0);

global.WeaponList = {
	
	defaultFire: new create_weapon(
		sDefaultFire,
		sprite_get_bbox_right(sDefaultFire) - sprite_get_xoffset(sDefaultFire),
		oDefaultFireBullet,
		18,
		1,
		0,
		sDefaultFirePickup
	),
	
	spreadFire: new create_weapon(
		sSpreadFire,
		sprite_get_bbox_right(sSpreadFire) - sprite_get_xoffset(sSpreadFire),
		oSpreadFireBullet,
		20,
		10,
		45,
		sSpreadFirePickup
	),

	rapidFire: new create_weapon(
		sRapidFire,
		sprite_get_bbox_right(sRapidFire) - sprite_get_xoffset(sRapidFire),
		oRapidFireBullet,
		3,
		1,
		0,
		sRapidFirePickup
		
		
		
	),
    destructFire: new create_weapon(
		sDestructFire,
		sprite_get_bbox_right(sDestructFire) - sprite_get_xoffset(sDestructFire),
		oDestructFireBullet,
		3,
		2,
		20,
		sDestructFirePickup
		
	),
       
}
