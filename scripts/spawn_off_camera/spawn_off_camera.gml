function spawn_off_camera(_obj, _num){
	var _x = random_range(0, room_width);
	var _y = random_range(0, room_height);
	
	while(point_in_rectangle(_x, _y, global.camX-64, global.camY-64, global.camX+1064, global.camY+1064)){
		var _x = random_range(0, room_width);
		var _y = random_range(0, room_height);
	}
	
	repeat(_num){
		instance_create_layer(_x, _y, "Instances", _obj);
	}
} 