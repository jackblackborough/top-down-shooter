
getDamaged(oDamageParent);

var _healthPercent = 1- (hp/maxHp);
image_index = _healthPercent * (image_number - 1);

if (hp < 1) 
{
	
	instance_create_depth( x , y, - 10000, oBigBoom);
	create_screen_pause(3);
	instance_destroy(); 
	
}