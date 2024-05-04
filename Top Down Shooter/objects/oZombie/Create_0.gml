
// Inherit the parent event
event_inherited();


// Inherit the parent event
event_inherited();

hp = 10
spd = 0;
chase_spd = .4;
dir = 0;
xspd = 0;
yspd = 0;


face = 1;

// State machine
state = 0;

fadeSpd = 1/15;
emergeSpd = .25;

cooldown_time = max(120, random(240));
shoot_timer = 0;
wind_up_time = 60;
recover_time = max(30, random(60));
bullet_instance = noone;

   bulletXoffset = 5;
   bulletYoffset = -8;