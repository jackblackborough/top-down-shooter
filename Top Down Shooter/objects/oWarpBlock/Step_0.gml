if (!instance_exists(oWarp) && place_meeting(x, y, oPlayer)) {
	
		with (instance_create_depth(0, 0, 0, oWarp)) {
			
			targetRoom = other.targetRoom;
			targetObj = other.targetObj;
			
		}
	
}