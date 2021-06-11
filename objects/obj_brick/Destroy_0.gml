audio_play_sound(snd_explode, 1, false);

//var _power = irandom(3);
var _power = irandom(9);
if(_power < 2 and !instance_exists(obj_fighter)){
	instance_create_layer(x, y, "Instances", obj_power);
}

global.player_score += 15;
global.bricks_counter += 1;

if(global.bricks_counter > 0 and global.bricks_counter % 100 == 0){
	audio_play_sound(snd_life_up, 2, false);
	global.player_lives += 1;			
}