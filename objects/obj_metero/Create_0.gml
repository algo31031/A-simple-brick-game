sprite_index = choose(spr_meteorBrown_big, spr_meteorBrown_med, spr_meteorBrown_small);
switch(sprite_index){
	case spr_meteorBrown_big:
		speed = 1;
		m_hp = 3;
		break;
	case spr_meteorBrown_med:
		speed = 1.5;
		m_hp = 2;	
		break;	
	case spr_meteorBrown_small:
		speed = 2;
		m_hp = 1;	
		break;	
}
image_angle = irandom_range(0, 359);
direction = irandom_range(0, 359);
