/// @description Insert description here
// You can write your code in this editor

moveDir = 0;
moveSpd = 2;
xspd = 0;
yspd = 0;

// Sprite Control

centerYOffset = -10;
centerY = y + centerYOffset;

weaponOffsetDist = 0;
aimDir = 0;

face = 3;
sprite[0] = sPlayerRightWalk;
sprite[1] = sPlayerUpWalk;
sprite[2] = sPlayerLeftWalk;
sprite[3] = sPlayerDownWalk;

sprite_idle[0] = sPlayerRight;
sprite_idle[1] = sPlayerUp;
sprite_idle[2] = sPlayerLeft;
sprite_idle[3] = sPlayerDown;

shootTimer = 0;

defaultFire = new create_weapon(
	sDefaultFire,
	sprite_get_bbox_right(sDefaultFire) - sprite_get_xoffset(sDefaultFire),
	oDefaultFireBullet,
	18
);

powerFire = new create_weapon(
	sPowerFire,
	sprite_get_bbox_right(sPowerFire) - sprite_get_xoffset(sPowerFire),
	oPowerFireBullet,
	50
);

rapidFire = new create_weapon(
	sRapidFire,
	sprite_get_bbox_right(sRapidFire) - sprite_get_xoffset(sRapidFire),
	oRapidFireBullet,
	9
);


weapon = rapidFire;








