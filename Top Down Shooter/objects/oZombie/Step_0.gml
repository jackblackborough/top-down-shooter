
// State machine
switch (state) {

	// Chase player
	case 0:
	
		if (instance_exists(oPlayer)) {
			dir = point_direction(x, y, oPlayer.x, oPlayer.y);	
		}
		
		spd = chase_spd;
		
		
		// Transition to shooting
		
		shoot_timer ++;
		
		if (shoot_timer > cooldown_time) 
		{
			state = 1;
			
			
			// Reset timer
			shoot_timer = 0;
		}
		
	break;
	
	// Pause and shoot
	case 1:
		
		if (instance_exists(oPlayer)) {
			dir = point_direction(x, y, oPlayer.x, oPlayer.y);	
		}
		
		spd = 0;
		
		// Stop animating
		image_index = 0;
		
		// Shoot magic bullet
		shoot_timer ++;
		
		if (shoot_timer == 1) 
		{
			bullet_instance = instance_create_depth( x + bulletXoffset*face , y + bulletYoffset , depth, oEnemyBullet);
		}
		
		// Shoot after wind up timer
		if (shoot_timer == wind_up_time && instance_exists(bullet_instance)) 
		{
			bullet_instance.state = 1;
		}
		
		// Recover time and start chasing player
		if (shoot_timer > wind_up_time + recover_time) 
		{
			state = 0;
			
			shoot_timer = 0;
		}
		
	break;

}

xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

if (dir > 90 && dir < 270) 
{
	face = -1;
} 
else 
{
	face = 1;
}

if (place_meeting(x + xspd, y, oObstacle) || place_meeting(x + xspd, y, oEnemyParent)) {
	xspd = 0;
}

if (place_meeting(x, y + yspd, oObstacle) || place_meeting(x, y + yspd, oEnemyParent)) {
	yspd = 0;
}

x += xspd;
y += yspd;

depth = -y;

event_inherited();









