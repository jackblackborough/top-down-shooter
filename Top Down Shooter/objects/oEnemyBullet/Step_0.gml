
switch (state) 
{
	case 0:
		if (instance_exists(oPlayer)) 
		{
			dir = point_direction(x, y, oPlayer.x, oPlayer.y);			
		}
		
		// Set dept so bullet can be seen
		depth = -y - 50;
		
	break;
	
	case 1:
	
		xspd = lengthdir_x(spd, dir);
		yspd = lengthdir_y(spd, dir);
		
		x += xspd;
		y += yspd;
		
		depth = -y;
	
	break;
}

if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height) 
{
	destroy = true;
}

if (hitConfirm == true && playerDestroy == true) 
{
	destroy = true;
}

if (destroy == true) 
{
	instance_destroy();
}

if (place_meeting( x, y, oWall))
{
	destroy = true;
}