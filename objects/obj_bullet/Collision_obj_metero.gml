audio_play_sound(snd_hit, 1, false);

with(other){
	m_hp -= 1;
}

instance_destroy();