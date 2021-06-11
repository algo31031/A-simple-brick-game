is_flying = false;
is_extra = false;
spd = 3;
max_spd = 7;
image_speed = 0;

function speed_up(){
	if(speed <= max_spd){
		speed += 0.5;
	}
}