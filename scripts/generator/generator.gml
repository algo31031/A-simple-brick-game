function generate_bricks(){
	var _power = floor(global.player_score/1000) + 1;
	var _ds = ds_list_create()
	
	do {
		var _xx = irandom_range(3, 14)
		if(!ds_list_find_value(_ds, _xx)){
			_ds[| _power--] = _xx;
		}
	} until(_power < 0); // TODO: control _power range
	//show_debug_message(ds_list_size(_ds));
	//show_debug_message(_ds[| 0]);
	for(var i = 0; i < ds_list_size(_ds); i++){
		instance_create_layer(_ds[| i]*32, 0, "Instances", obj_brick);
	}
}

function generate_meteros(){
	var _xx, _yy;
	
	if(irandom(1) == 1){
		//generate from H-border
		_xx = irandom(1) == 1 ? 0 : room_width;
		_yy = random_range(room_height*0.25, room_height*0.75);
	} else {
		//generate from V-border
		_yy = irandom(1) == 1 ? 0 : room_height;
		_xx = random_range(room_width*0.25, room_width*0.75);		
	}
	
	instance_create_layer(_xx, _yy, "Instances", obj_metero);
	//spawn_off_camera(_xx, _yy, obj_metero, 1);
}