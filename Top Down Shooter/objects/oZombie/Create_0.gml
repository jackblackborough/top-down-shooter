
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
cooldown_time = min(6000, random(7000));
shoot_timer = 0;
wind_up_time = 60;
recover_time = min(45, random(60));
bullet_instance = noone;

   bulletXoffset = 5;
   bulletYoffset = -8;