 if(bbox_left < 0 or bbox_right > room_width){
	audio_play_sound(snd_touch_wall, 1, false);
	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
	hspeed *= -1;
} 

if(bbox_top <= 0){
	audio_play_sound(snd_touch_wall, 1, false);
	y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);
	vspeed *= -1;
} 

if(bbox_bottom > room_height){
	if(!is_extra){
		global.player_lives -= 1;
		audio_play_sound(snd_die, 1, false);
	}
	instance_destroy();
	
	with(obj_bat){
		image_xscale = 1;
	}
	
	if(global.player_lives <= 0){
		global.high_score = global.player_score;
		global.gameover = true;
	} else {
		if(!is_extra){
			instance_create_layer(xstart, ystart, "Instances", obj_ball);
		}
	}
}