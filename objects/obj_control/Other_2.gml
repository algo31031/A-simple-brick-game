global.player_score = 0;
global.high_score = 100;
global.player_lives = 3;
global.bricks_counter = 0;
global.gameover = false;

lives = 5;

draw_set_font(ft_game);
audio_play_sound(snd_bmg, 0, true);

randomize();

alarm[1] = 5*room_speed;
