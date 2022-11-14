/// @description Insert description here
// You can write your code in this editor

global.chicken =true

global.horse = true

global.key = true

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
