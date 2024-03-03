draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);

var _healthPercentage = hp / maxHp;
var _hpImage = _healthPercentage*(sprite_get_number(sEnemyHealthBar) - 1) ;
draw_sprite( sEnemyHealthBar, _hpImage , x, y - sprite_height - 1);
