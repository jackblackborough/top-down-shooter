/// @description Insert description here
// You can write your code in this editor
floatDir += floatSpd;
y = ystart + lengthdir_y( 2, floatDir);


if place_meeting(x, y, oPlayer){
	
	if (oPlayer.hp < oPlayer.maxHp) {	
		oPlayer.hp = min(oPlayer.hp + heal, oPlayer.maxHp);
	}
	
	instance_destroy();
	
}