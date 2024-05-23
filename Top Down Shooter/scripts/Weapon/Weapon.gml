
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
	
	spreadFire: new create_weapon(
		sSpreadFire,
		sprite_get_bbox_right(sSpreadFire) - sprite_get_xoffset(sSpreadFire),
		oSpreadFireBullet,
		20,
		10,
		45
	),

	rapidFire: new create_weapon(
		sRapidFire,
		sprite_get_bbox_right(sRapidFire) - sprite_get_xoffset(sRapidFire),
		oRapidFireBullet,
		3,
		
		
		
	),
    destructFire: new create_weapon(
		sDestructFire,
		sprite_get_bbox_right(sDestructFire) - sprite_get_xoffset(sDestructFire),
		oDestructFireBullet,
		3,
		2,
		20
		
		
		
	),
        torch: new create_weapon(
		sTorch,
		sprite_get_bbox_right(sTorch) - sprite_get_xoffset(sTorch),
	    oLight,
	    0,
		180,
		180
		
		
		
	),
	guitar: new create_weapon(
		sGuitar,
		sprite_get_bbox_right(sGuitar) - sprite_get_xoffset(sGuitar),
	    oMusic,
	    10,
		75,
		75
		
		
		
	),
	
	invisFire: new create_weapon(
		sInvisFire,
		sprite_get_bbox_right(sInvisFire) - sprite_get_xoffset(sInvisFire),
	    oInvisBullet,
	    0,
		360,
	    360
		
		
		
	),
}
