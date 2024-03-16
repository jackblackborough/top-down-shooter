/// @description Insert description here
// You can write your code in this editor
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

if instance_exists(oPlayer){

var _border = 8;
draw_sprite(sHealthBar, 0, _camX + _border, _camY + _border)

for( var i = 0; i < playerMaxHp; i++ ){
	
var _img = 1;
if i+1 <= playerHp {_img = 2; }
	
var _sep = 3;
draw_sprite(sHealthBar, _img,  _camX + _border + _sep*i, _camY + _border);	
}

}




























