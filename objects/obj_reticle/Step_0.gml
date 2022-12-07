/// @description Insert description here
// You can write your code in this editor

depth = -1000

x = mouse_x
y = mouse_y


if(mouse_check_button_pressed(mb_left)){
	 audio_play_sound(snd_shoot,1,false)
}

if(position_meeting(mouse_x, mouse_y, obj_tookey1 )){
	
	if(mouse_check_button(mb_left)){
	with (instance_position(mouse_x,mouse_y,obj_tookey1)){
		instance_destroy();
	}
	points += 1
	}
}

if(position_meeting(mouse_x, mouse_y, obj_tookey2 )){
	
	if(mouse_check_button(mb_left)){
	with (instance_position(mouse_x,mouse_y,obj_tookey2)){
		instance_destroy();
	}
	points += 1
	}
}

if(position_meeting(mouse_x, mouse_y, obj_film )){
	
	if(mouse_check_button(mb_left)){
	with (instance_position(mouse_x,mouse_y,obj_film)){
		instance_destroy();
	}
	points += 1
	}
}

if(position_meeting(mouse_x, mouse_y, obj_game )){
	
	if(mouse_check_button(mb_left)){
	with (instance_position(mouse_x,mouse_y,obj_game)){
		instance_destroy();
	}
	points += 1
	}
}

if points = 8{
	room_goto(mini_game1_story_end)
}