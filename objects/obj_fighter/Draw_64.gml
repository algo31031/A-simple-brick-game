if(bullet_counts > 0){
	var _x = 32;
	repeat(bullet_counts){
		draw_sprite(spr_bullet, 0, _x, 928);
		_x += 16;
	}	
}