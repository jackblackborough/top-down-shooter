
function create_weapon(
	_sprite,
	_length,
	_bullet_obj,
	_cooldown,
	_bulletNum = 1,
	_spread = 0
) constructor {	
	sprite = _sprite;
	length = _length;
	bulletObj = _bullet_obj;
	cooldown = _cooldown;
	bulletNum = _bulletNum;
	spread = _spread
}

global.PlayerWeapons = array_create(0);

global.WeaponList = {
	
	defaultFire: new create_weapon(
		sDefaultFire,
		sprite_get_bbox_right(sDefaultFire) - sprite_get_xoffset(sDefaultFire),
		oDefaultFireBullet,
		18
	),
	
	powerFire: new create_weapon(
		sPowerFire,
		sprite_get_bbox_right(sPowerFire) - sprite_get_xoffset(sPowerFire),
		oPowerFireBullet,
		50,
		7,
		90
	),

	rapidFire: new create_weapon(
		sRapidFire,
		sprite_get_bbox_right(sRapidFire) - sprite_get_xoffset(sRapidFire),
		oRapidFireBullet,
		9,
	),
	
}
