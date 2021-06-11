if(bullet_counts > 0){
	audio_play_sound(snd_laser, 2, false);
	
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	_bullet.direction = direction;
	_bullet.image_angle = image_angle-90;
	
	bullet_counts -= 1;
}