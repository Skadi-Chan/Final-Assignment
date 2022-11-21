/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, id )){
	
	
	if(mouse_check_button(mb_left)){
	with (instance_position(mouse_x,mouse_y,obj_tookey2)){
		instance_destroy();
	}
	}
}