if(instance_exists(target)){
	//show_debug_message("in space room");
	//show_debug_message(target)
	//show_debug_message(target.x)
	//show_debug_message(target.y)
	global.camX = target.x - cam_width/2;
	global.camY = target.y - cam_height/2;
	
	global.camX = clamp(global.camX, 0, room_width - obj_maincam.cam_width);
	global.camY = clamp(global.camY, 0, room_height - obj_maincam.cam_height);
}

camera_set_view_pos(view_camera[0], global.camX, global.camY);

layer_y("Background", global.camX);
layer_y("Background", global.camY);
layer_y("Parallax", global.camX*0.9);
layer_y("Parallax", global.camY*0.9);
