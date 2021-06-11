switch(image_index){
	case 0:
		audio_play_sound(snd_power, 1, false);
		with(obj_bat){
			image_xscale = 2;
			alarm[0] = 8*room_speed;
		}
		break;
		
	case 1:
		audio_play_sound(snd_power, 1, false);
		with(obj_ball){
			speed = spd - 0.5;
			alarm[0] = 8*room_speed;
		}
		break;
		
	case 2:
		audio_play_sound(snd_power, 1, false);
		var _ball = instance_create_layer(xstart, ystart, "Instances", obj_ball);
		with(_ball){
			is_extra = true;
			is_flying = true
			direction = irandom_range(45, 135);
			speed = spd;
			image_index = 1;
		}
		break;
		
	case 3:
		audio_play_sound(snd_power, 1, false);
		instance_create_layer(other.x, other.y, "Instances", obj_fighter);
		break;
		
	case 4:
		global.player_score += 500;
		room_goto(rm_space);
		break;
	
	case 5:
		audio_play_sound(snd_life_up, 2, false);
		global.player_lives += 1;
}

instance_destroy();