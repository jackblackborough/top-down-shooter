// Inherit the parent event
event_inherited();

dir = 0;
spd = 2;

xspd = 0;
yspd = 0;

// State control
state = 0;
// 0 - Aim at player, don't move
// 1 - Bullet/Magic moves towards player


// Cleanup
destroy = false;
playerDestroy = true; // Should bullet destroy when it hits enemy