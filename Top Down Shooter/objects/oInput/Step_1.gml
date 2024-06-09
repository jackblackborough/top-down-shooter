/// @description Insert description here
// You can write your code in this editor

 if global.controllermode == 0 {
	 
	global.rightKey = keyboard_check( ord("D")  );
	global.leftKey = keyboard_check( ord("A")  );
	global.upKey = keyboard_check( ord("W")  );
	global.downKey = keyboard_check( ord("S")  );
	global.xAxisLeft = global.rightKey - global.leftKey;
	global.yAxisLeft = global.downKey - global.upKey;

	global.shootKey = mouse_check_button(mb_left);
	global.weaponSwapKey = mouse_check_button_pressed(mb_right);
	global.StartKeyPressed = keyboard_check_pressed( vk_space);

}


if global.controllermode == 1 {	
	
	var _gamePad = 0;
	if gamepad_is_connected(_gamePad){
		
		gamepad_set_axis_deadzone(_gamePad, .2);
		
		global.rightKey = gamepad_button_check(_gamePad, gp_padr);
		global.leftKey = gamepad_button_check(_gamePad, gp_padl); 
		global.upKey = gamepad_button_check(_gamePad, gp_padu); 
		global.downKey = gamepad_button_check(_gamePad, gp_padd); 
				
		global.xAxisLeft = gamepad_axis_value(_gamePad, gp_axislh) + ( global.rightKey - global.leftKey);
		global.yAxisLeft = gamepad_axis_value(_gamePad,gp_axislv) + (global.downKey - global.leftKey) ;
	    global.xAxisLeft = clamp(global.xAxisLeft, -1, 1);
		global.yAxisLeft = clamp(global.yAxisLeft, -1, 1);
		
		global.xAxisRight = gamepad_axis_value(_gamePad, gp_axisrh);
		global.yAxisRight = gamepad_axis_value(_gamePad,gp_axisrv);
		
		global.shootKey = gamepad_button_check(_gamePad, gp_shoulderrb);
		global.weaponSwapKey = gamepad_button_check_pressed(_gamePad, gp_shoulderlb)
		global.StartKeyPressed =gamepad_button_check_pressed(_gamePad, gp_start);
	}

}

































