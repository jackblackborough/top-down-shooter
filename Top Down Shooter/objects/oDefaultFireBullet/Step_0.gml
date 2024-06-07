


xspd = lengthdir_x( spd, dir);
yspd = lengthdir_y( spd, dir );
  	  	  
x += xspd;
y += yspd;
depth = -y;




if (hitConfirm == true && enemyDestroy == true) {
	destroy = true;
}

if (place_meeting( x, y, oWall))
{
	destroy = true;
}		

if (point_distance( xstart, ystart, x, y ) > maxDist)
{ 
	destroy = true;
}

if (destroy == true)
{
   instance_destroy();
}

















