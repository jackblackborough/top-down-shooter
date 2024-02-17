/// @description Insert description here
// You can write your code in this editor

// Draw weapon before player
if aimDir >= 0 && aimDir < 180
{
   draw_my_weapon();
}

// Draw player
draw_self();

// Draw weapon on top of player
if aimDir >= 180 && aimDir < 360
{
	draw_my_weapon();
}

draw_text(x, y, string(hp));