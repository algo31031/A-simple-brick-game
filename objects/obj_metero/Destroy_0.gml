switch(sprite_index){
	case spr_meteorBrown_big:
		global.player_score += 20;
		repeat(2){
			var _metero = instance_create_layer(x + (irandom(1) == 0 ? 20 : -20), 
												y + (irandom(1) == 0 ? 20 : -20), 
												"Instances", obj_metero);
			_metero.sprite_index = spr_meteorBrown_med;
			_metero.m_hp = 2;
		}		
		
		break;		
	case spr_meteorBrown_med:
		global.player_score += 15;
		repeat(2){
			var _metero = instance_create_layer(x + (irandom(1) == 0 ? 20 : -20), 
												y + (irandom(1) == 0 ? 20 : -20), 
												"Instances", obj_metero);
			_metero.sprite_index = spr_meteorBrown_small;
			_metero.m_hp = 1;
		}	
		
		break;
	case spr_meteorBrown_small:
		global.player_score += 10;
		
		break;
}

repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
}