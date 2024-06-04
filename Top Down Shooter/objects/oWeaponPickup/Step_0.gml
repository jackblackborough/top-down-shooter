/// @description Insert description here
// You can write your code in this editor

floatDir += floatSpd;
y = ystart + lengthdir_y( 2, floatDir);

var _size = array_length(global.PlayerWeapons);
for (var i = 0; i < _size; i++; ){
	
	if weapon = global.PlayerWeapons[i]{
		
		
		instance_destroy();
		exit;
	}
	
	
	
}

sprite_index = weapon.pickupSprite;

if place_meeting( x, y, oPlayer){
	
array_push (global.PlayerWeapons, weapon);

instance_destroy();



	
}