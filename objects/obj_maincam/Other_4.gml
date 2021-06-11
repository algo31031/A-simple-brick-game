//Camera
target = obj_ship;
if(!instance_exists(target)){
	global.camX = 0;
	global.camY = 0;	
}

view_enabled = true;
view_visible[0] = true;

camera_set_view_pos(view_camera[0], global.camX, global.camY);

//Display
display_scale = 1;
display_width = cam_width * display_scale;
display_height = cam_height * display_scale;

window_set_size(display_width, display_height);
surface_resize(application_surface, display_width, display_height);

//GUI
display_set_gui_size(cam_width, cam_height);

alarm[0] = 1;