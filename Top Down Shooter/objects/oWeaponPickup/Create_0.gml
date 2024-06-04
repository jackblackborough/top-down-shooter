/// @description Insert description here
// You can write your code in this editor
floatDir = 0;
floatSpd = 6;

if image_index == 4 {
	
weapon = global.WeaponList.defaultFire;
}


if image_index == 1 {
	

weapon = global.WeaponList.spreadFire;

}

if image_index == 2 {
	

weapon = global.WeaponList.rapidFire;
}

if image_index == 3 {
	

weapon = global.WeaponList.destructFire;
}

sprite_index = weapon.pickupSprite
image_index = 0;


var _size = array_length(global.PlayerWeapons);
for (var i = 0; i < _size; i++; ){
	if weapon = global.PlayerWeapons[i]{	
		instance_destroy();
	}		
}


