/// @description Insert description here
// You can write your code in this editor

timer++;

if timer >= spawnTime
{

	var _inst = instance_create_depth( x, y, depth+1, oZombie);
	with( _inst)
	{ 
		image_alpha = 0;
		state = -1;	
	}
	
	timer = 0;
}
























