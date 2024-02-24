
// Inherit the parent event
event_inherited();

hp = 15;
spd = 0;
chase_spd = .4;
dir = 0;
xspd = 0;
yspd = 0;

face = 1;

// State machine
state = 0;
cooldown_time = 120;
shoot_timer = 0;
wind_up_time = 60;
recover_time = 30;
bullet_instance = noone;
