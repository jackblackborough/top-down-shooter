/// @description Insert description here
// You can write your code in this editor
if room = targetRoom{
	
	oPlayer.x = targetObj.x;
	oPlayer.y = targetObj.y;
	oPlayer.face = targetRoom.image_index;
	
	with (oPlayer){
	
	sprite_index = sprite[face];
	aimDir = face*90;
	centerY = y + centerYOffset;
	}
	
}


if image_index == -1 && image_index < 1{
	
	
	instance_destroy();
	
}