switch(room){
	case rm_brick:
		generate_bricks();
		alarm[1] = 10*room_speed;
		break;
	case rm_space:
		generate_meteros();
		alarm[1] = 3*room_speed;
		break;		
}

