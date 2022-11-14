/// @description Insert description here
// You can write your code in this editor

depth = -y

if place_meeting(x,y, obj_Player) and global.chicken= true and global.key= true and global.horse = true{
	audio_play_sound(snd_pass,1,0)
	room_goto(Starting_Screen)
}


