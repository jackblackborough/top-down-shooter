/// @description Insert description here
// You can write your code in this editor
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);


var _border = 8;
var _hudX = _camX + _border;
var _hudY = _camY + _border;








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




var _enemyCountOffset = 24 ;
var _ecHudX = _hudX;
var _ecHudY = _hudY + _enemyCountOffset
draw_sprite( sEnemyCountHud, 0, _ecHudX , _ecHudY);


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Font1);


draw_text( _ecHudX + 20, _ecHudY + 1.5, string(global.enemyKillCount)  );
draw_text( _ecHudX + 44, _ecHudY + 1.5, "/" + string(global.enemyRoomMax) );











