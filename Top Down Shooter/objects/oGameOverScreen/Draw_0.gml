/// @description Insert description here
// You can write your code in this editor
 var _camX = camera_get_view_x( view_camera[0] );
 var _camW = camera_get_view_width( view_camera[0] );
 var _camY = camera_get_view_y( view_camera[0] );
 var _camH = camera_get_view_height( view_camera[0] );

draw_set_alpha( alpha*alphaMax );
draw_rectangle_color( _camX, _camY, _camX + _camW, _camY + _camH, c_black, c_black, c_black, c_black, false );
draw_set_alpha( 0 );

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_set_font( Font1);
var _gameoverOffset = -32;
draw_text_transformed( _camX + _camW/2,  _camY + _camH/2 + _gameoverOffset, "GAME OVER", 3, 3, 0);


var restartOffset = - 80;
draw_text_transformed(_camX + _camW/2,  _camY + _camH/2 - restartOffset, " * PRESS SHOOT  TO RESTART * ", 2, 2, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);	