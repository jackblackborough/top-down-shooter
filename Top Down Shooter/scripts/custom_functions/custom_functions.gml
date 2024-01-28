function draw_my_weapon( )
{
	var _xOffset = lengthdir_x( weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y( weaponOffsetDist, aimDir);


	var _weaponYscl = 1;
	if aimDir > 90 && aimDir < 270
	{
		_weaponYscl = -1;
	}

	draw_sprite_ext ( sbigbulletshooter, 0, x + 10, centerY, 1, 1, aimDir, c_white, 1 );
}