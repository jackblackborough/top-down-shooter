/// @description Insert description here
// You can write your code in this editor
if createdDamageObjects == false{
	

enemyDamageInst = instance_create_depth(  x, y, 0, oDamageEnemy);
with( enemyDamageInst){
	
	damage = other.damage;
mask_index = other.sprite_index;	
image_xscale = other.image_xscale;	
image_yscale = other.image_yscale;	
}

playerDamageInst = instance_create_depth(  x, y, 0, oDamageEnemy);
with( playerDamageInst){
	
	damage = other.damage;
mask_index = other.sprite_index;	
image_xscale = other.image_xscale;	
image_yscale = other.image_yscale;	
}

createdDamageObjects = true;


}

if floor(image_index) > 1 {
	
if instance_exists(enemyDamageInst)
{		
 instance_destroy(enemyDamageInst)
}

		
if instance_exists(playerDamageInst)
{		
instance_destroy(playerDamageInst)
}	
	
	
	
}