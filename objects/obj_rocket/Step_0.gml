/// @description Insert description here
// You can write your code in this editor

//set the renewed speed for every frame
vspeed *= 0;
hspeed *= 0;

//set the control for the rocket
if(keyboard_check(vk_up)){
	vspeed -= wasd_speed;
	image_speed = wasd_speed / img_speed_divider
	sprite_index = spr_rocket;
}

if(keyboard_check(vk_down)){
	vspeed += wasd_speed;
	image_speed = wasd_speed / img_speed_divider
	sprite_index = spr_rocket;
}

if(keyboard_check(vk_right)){
	hspeed += wasd_speed;
	image_speed = wasd_speed / img_speed_divider
	sprite_index = spr_rocket;
}

if(keyboard_check(vk_left)){
	hspeed -= wasd_speed;
	image_speed = wasd_speed / img_speed_divider
	sprite_index = spr_rocket;
}

if keyboard_check(vk_nokey){
	image_speed = 0;
	wasd_speed = 3.5;
	image_index = 0;
}



//make the rocket stay in bound and end the game when it reaches the top
if( y > room_height){
	y = room_height;
}
//}else if(y < 0){
//	room_goto(rm_shoting_screen);
//}

if( x > room_width){
	x = room_width/2;
}

if( x < 0){
	x = room_width/2;
}

//the collision in code 
if place_meeting(x,y,obj_book){
	y = room_height;
	audio_play_sound(snd_ship,0,0)
	rocket_life -=1
}

if place_meeting(x,y,obj_tombstone){
	y = room_height;
	audio_play_sound(snd_ship,0,0)
	rocket_life -=1
}

if rocket_life =0 {
	room_goto(mini_game2_story_end)
	
}

