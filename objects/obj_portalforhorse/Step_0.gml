/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y, obj_Player)) and global.chicken = true and global.key = true and global.horse = true{
	
	audio_play_sound(snd_portal,1,false)
	
	room_goto(targetroom)
	
	
}

if (place_meeting(x + 32,y, obj_Player)) and global.chicken = true and global.key = true and global.horse = true{
	audio_play_sound(snd_portal,1,false)
	room_goto(targetroom)
	
}

if (place_meeting(x ,y + 32, obj_Player)) and global.chicken = true and global.key = true and global.horse = true{
	audio_play_sound(snd_portal,1,false)
	room_goto(targetroom)
	
}
if (place_meeting(x ,y - 32, obj_Player)) and global.chicken = true and global.key = true and global.horse = true{
	audio_play_sound(snd_portal,1,false)
	room_goto(targetroom)
	
}

if keyboard_check_pressed(ord("M")){
	if global.music = true{
	audio_stop_sound(snd_bgm)
	global.music = false
	}
	else if global.music = false{
	audio_play_sound(snd_bgm,1,true)
	global.music = true
	}
}
