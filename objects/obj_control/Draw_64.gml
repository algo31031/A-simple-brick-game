function draw_scores(){
	if(global.player_score > global.high_score){
		global.high_score = global.player_score;
	}	
	
	draw_text(16, 16, "Score: " + string(global.player_score));
	draw_set_halign(fa_right);
	draw_text(obj_maincam.cam_width - 16, 16, "High Score: " + string(global.high_score));
	draw_set_halign(fa_left);
}

switch(room){
	case rm_brick:
		draw_scores();

		var _x = 48;
		repeat(global.player_lives){
			draw_sprite_ext(spr_bat, 0, _x, 960, 0.75, 0.75, 0, c_white, 0.6);
			_x += 64;
		}
		break;
		
	case rm_space:
		draw_scores();
		var _x = 16;
		repeat(lives){
			draw_sprite_ext(spr_ship_avatar, 0, _x, 40, 1, 1, 0, c_white, 0.5);
			_x += 40;
		}		
		
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);		
		draw_text_transformed_color(obj_maincam.cam_width/2, 400, "GAME OVER",3, 3, 0, c_red, c_red, c_red, c_red, 1);
		draw_text_transformed_color(obj_maincam.cam_width/2, 600, "Your Score: " + string(global.player_score), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
		draw_text_transformed_color(obj_maincam.cam_width/2, 700,  ">> Press SPACE To Restart <<", 1, 1, 0, c_white, c_white, c_white, c_white, 1);	
		draw_set_halign(fa_left);
		break;
}