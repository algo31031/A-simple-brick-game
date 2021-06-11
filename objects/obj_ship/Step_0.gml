if(keyboard_check(vk_left)){
	image_angle += 2;
	direction += 2;
}
if(keyboard_check(vk_right)){
	image_angle -= 2;
	direction -= 2;
}
if(keyboard_check(vk_up) and speed < max_spd){
	speed += 0.1;
}
if(keyboard_check(vk_down) and speed > 0){
	speed -= 0.1;
}

//move_wrap(true, true, sprite_width/2);