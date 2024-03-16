/// @description Insert description here
// You can write your code in this editor

getDamagedCreate(20, true);

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

array_push(global.PlayerWeapons, global.WeaponList.defaultFire);
array_push(global.PlayerWeapons, global.WeaponList.rapidFire);
array_push(global.PlayerWeapons, global.WeaponList.spreadFire);

selectedWeapon = 0;

weapon = global.PlayerWeapons[selectedWeapon];

hp = 20;



