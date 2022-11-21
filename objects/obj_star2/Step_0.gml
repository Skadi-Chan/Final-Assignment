/// @description Insert description here
// You can write your code in this editor

//make the stars come back
if( x > room_width){
	x = 0;
}else if(x < 0){
	x = room_width;
}

if( y > room_height){
	y = 0;
}else if(y < 0){
	y = room_height;
}

if(position_meeting(mouse_x, mouse_y, id )){
	show_debug_message("Over Star" + string(id));
	
	if(mouse_check_button(mb_left)){
	with (instance_position(mouse_x,mouse_y,obj_star2)){
		instance_destroy();
	}
	}
}
