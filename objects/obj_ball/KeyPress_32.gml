if(!is_flying){
	is_flying = true;
	direction = irandom_range(45, 135);
	speed = spd;
	audio_play_sound(snd_shoot, 1, false);
}