/// @description Insert description here
// You can write your code in this editor

depth = -y


if (keyboard_check(ord("W")) 
and (place_meeting(x, y+18, obj_Player)) and place_free(x,y-3)){
	
	y -= walkingspeed;

	audio_play_sound(snd_box,1,false)
	
}

 
if (keyboard_check(ord("A")) 
and (place_meeting(x + 9, y, obj_Player)) and place_free(x-3,y)){
	
	x -= walkingspeed;
	audio_play_sound(snd_box,1,false)
	

}


if (keyboard_check(ord("S")) 
and (place_meeting(x , y - 18, obj_Player)) and place_free(x,y+3)){
	
	y += walkingspeed;
	audio_play_sound(snd_box,1,false)
	
}

 
if (keyboard_check(ord("D")) 
and (place_meeting(x - 9, y, obj_Player)) and place_free(x+3,y)){
	
	x += walkingspeed;
	audio_play_sound(snd_box,1,false)
}

//make the player stand still when no keys' pressed
if(keyboard_check(vk_nokey)){
	
	walkingspeed = 3.5;
	
}
