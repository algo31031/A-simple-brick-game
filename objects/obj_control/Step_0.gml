switch(room){
	case rm_brick:
		if(global.gameover){
			room_goto(rm_gameover);
		}
				
		break;	
		
	case rm_space:
		if(lives <= 0){
			room_goto(rm_gameover);
			break;
		}
	
		if(instance_number(obj_metero) < 6){
			generate_meteros();
		}
		
		break;		
				
	case rm_gameover:
		//show_debug_message("in global.gameover room");		
		if(keyboard_check_pressed(vk_space)){
			//show_debug_message("key pressed");
			game_restart();
		}
		
		break;
}