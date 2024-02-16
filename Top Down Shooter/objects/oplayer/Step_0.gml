/// @description Insert description here

var rightKey = keyboard_check( ord("D")  );
var leftKey = keyboard_check( ord("A")  );
var upKey = keyboard_check( ord("W")  );
var downKey = keyboard_check( ord("S")  );
var shootKey = mouse_check_button(mb_left);
var weaponSwapKey = mouse_check_button_pressed(mb_right);
 
var _horizKey = rightKey - leftKey;
var _vertKey = downKey - upKey;
moveDir = point_direction( 0, 0, _horizKey, _vertKey);

var _spd = 0;
var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
_inputLevel = clamp( _inputLevel, 0, 1);
_spd = moveSpd * _inputLevel;

xspd = lengthdir_x( _spd, moveDir );
yspd = lengthdir_y( _spd, moveDir );

if place_meeting( x + xspd, y, oWall )
{
	xspd = 0;
}
if place_meeting( x, y + yspd, oWall )
{
	yspd = 0;
}

x += xspd;
y += yspd;

depth = -bbox_bottom;

centerY = y + centerYOffset;


aimDir = point_direction( x, centerY, mouse_x, mouse_y );

face = round(aimDir / 90);
if (face == 4) { 
	face = 0; 
}

if (xspd == 0 && yspd == 0) {
	sprite_index = sprite_idle[face]	
} else {
	sprite_index = sprite[face]
}

if (xspd == 0 && yspd == 0)
{
	image_angle = 0;
}

var _PlayerWeapons = global.PlayerWeapons;
if (weaponSwapKey) {
	
	selectedWeapon++;
	
	if (selectedWeapon >= array_length(_PlayerWeapons)) {
		selectedWeapon = 0;
	}
	
	weapon = _PlayerWeapons[selectedWeapon];
}

if (shootTimer > 0) 
{ 
	shootTimer--; 
}

if (shootKey && shootTimer <= 0) 
{
	shootTimer = weapon.cooldown;
	
	var xOffset = lengthdir_x(weapon.length + weaponOffsetDist, aimDir);
	var yOffset = lengthdir_y(weapon.length + weaponOffsetDist, aimDir);
	
	var _spread = weapon.spread;
	var _spreadDiv = _spread / max(weapon.bulletNum - 1, 1);
	
	for (var _i = 0; _i < weapon.bulletNum; _i++) {
		
		var _bulletInst = instance_create_depth( x + xOffset, centerY + yOffset, depth - 100, weapon.bulletObj);
	 
		with( _bulletInst )
		{
			dir = other.aimDir - _spread / 2 + _spreadDiv * _i;
		}	 
	}
}