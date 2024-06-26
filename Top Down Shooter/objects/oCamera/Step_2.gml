// Get cameras width and height
var _cameraWidth = camera_get_view_width(view_camera[0]);
var _cameraHeight = camera_get_view_height(view_camera[0]);


// Center on the player
if (instance_exists(oPlayer)) 
{
	x = oPlayer.x - _cameraWidth / 2;
	y = oPlayer.centerY - _cameraHeight / 2;
}


if xShakeAmount > 0{
	
	xShakeDir += xShakeDirSpd;
	xShakeAmount -= xShakeAmountSpd;
	
}else{
	
xShakeAmount = 0;
xShakeDir = 0;
	
}
x += xShake;









yShake = dsin(yShakeDir) * yShakeAmount;
if yShakeAmount > 0{
	
	yShakeDir += yShakeDirSpd;
	yShakeAmount -= yShakeAmountSpd;
	
}else{
	
yShakeAmount = 0;
yShakeDir = 0;
	
}
y += yShake;

yShake = dsin(yShakeDir) * yShakeAmount;






// Clamp camera
x = clamp(x, 0, room_width - _cameraWidth);
y = clamp(y, 0, room_height - _cameraHeight);

// Set the camera position
camera_set_view_pos(view_camera[0], x, y);

