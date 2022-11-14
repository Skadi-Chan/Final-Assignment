/// @description Insert description here
// You can write your code in this editor

//the WASD moving control and checking if there's enough space to move
if (keyboard_check(ord("W")) and place_free(x, y - collisionSpeed)){
	y -= walkingspeed;
	image_speed = walkingspeed / 6;
	sprite_index = spr_PlayerWalkUP;
}

if (keyboard_check(ord("A")) and place_free(x- collisionSpeed, y )){
	x -= walkingspeed;
	image_speed = walkingspeed / 6;
	sprite_index = spr_PlayerWalkLeft;
}

if (keyboard_check(ord("S")) and place_free(x, y + collisionSpeed)){
	y += walkingspeed;
	image_speed = walkingspeed / 6
	sprite_index = spr_PlayerWalkDown;
}

if (keyboard_check(ord("D")) and place_free(x + collisionSpeed, y )){
	x += walkingspeed;
	image_speed = walkingspeed / 6;
	sprite_index = spr_PlayerWalkRight;
}

//make the player stand still when no keys' pressed
if keyboard_check(vk_nokey){
	image_speed = 0;
	walkingspeed = 3.5;
	image_index = 0;
}

//make the player able to run
//if(keyboard_check(vk_shift)){
	//walkingspeed = 6;
//}


//stop the player when they hit the wall


//let the player able to stand in front of the things
depth =-y

//check if the player is close to a npc1
if collision_circle(x,y, 50,obj_npc, false, false){
	
	if  keyboard_check_pressed(vk_space){ 
		instance_destroy(obj_text1)
		instance_destroy(obj_text2)
		
		if global.key = false{
			instance_create_depth(x, y-150, -4000, obj_text1)
			audio_play_sound(snd_talk,1,0)
		}
		
		else if global.key = true{
			instance_create_depth(x, y-150, -4000, obj_text2)
			audio_play_sound(snd_talk,1,0)
		}
		
		}
}else{
	instance_destroy(obj_text1)
	instance_destroy(obj_text2)
}

//talk with Kunkun
if collision_circle(x,y, 50,obj_kunkun, false, false){
	
	if  keyboard_check_pressed(vk_space){ 
		instance_destroy(obj_kun_talking_with_chicken)
		instance_destroy(obj_kun_talking_without_chicken)
		
		if global.chicken = false{
			instance_create_depth(x-340, y-240, -4000, obj_kun_talking_without_chicken)
			audio_play_sound(snd_talk,1,0)
		}
		
		else if global.chicken = true{
			instance_create_depth(x-340, y-240, -4000, obj_kun_talking_with_chicken)
			audio_play_sound(snd_talk,1,0)
		}
		
		}
}else{
	instance_destroy(obj_kun_talking_with_chicken)
	instance_destroy(obj_kun_talking_without_chicken)
}

//talking with dingzhen
if collision_circle(x,y, 50,obj_dingzhen, false, false){
	
	if  keyboard_check_pressed(vk_space){ 
		instance_destroy(obj_dingzhen_without_chicken)
		instance_destroy(obj_dingzhen_with_chicken)
		instance_destroy(obj_dingzhen_with_horse)
		
		if global.chicken = false{
			instance_create_depth(x-340, y-240, -4000, obj_dingzhen_without_chicken)
			audio_play_sound(snd_talk,1,0)
		}
		
		else if global.chicken = true and global.horse = false{
			instance_create_depth(x-340, y-240, -4000, obj_dingzhen_with_chicken)
			audio_play_sound(snd_talk,1,0)
		}
		
		else if global.chicken = true and global.horse = true{
			instance_create_depth(x-340, y-240, -5000, obj_dingzhen_with_horse)
			audio_play_sound(snd_talk,1,0)
		}
		
		}
}else{
	instance_destroy(obj_dingzhen_without_chicken)
	instance_destroy(obj_dingzhen_with_chicken)
	instance_destroy(obj_dingzhen_with_horse)
}



//talking to NPC2 at the starting page
if collision_circle(x,y, 80,obj_startingNPC2, false, false){
	if keyboard_check_pressed(vk_space){
		instance_destroy(obj_gamescreenNPC2)
		instance_create_depth(x-340, y-240, -4000, obj_gamescreenNPC2)
		audio_play_sound(snd_talk,1,0)
	}
}else{
		instance_destroy(obj_gamescreenNPC2)
}

//talking to NPC2 at the ending page
if collision_circle(x,y, 80,obj_npc2, false, false){
	if keyboard_check_pressed(vk_space){
		instance_destroy(obj_text3)
		instance_create_depth(x, y-150, -4000, obj_text3)
		audio_play_sound(snd_talk,1,0)
	}
}else{
		instance_destroy(obj_text3)
}


if place_meeting(x,y, obj_key){
	instance_destroy(obj_key)
	global.key = true
	audio_play_sound(snd_key, 1, 0);
}


if place_meeting(x,y,obj_door) and global.key = true{
	instance_destroy(obj_door)
	audio_play_sound(snd_door,1,0)
}


if place_meeting(x,y, obj_chicken){
	instance_destroy(obj_chicken)
	global.chicken = true
	audio_play_sound(snd_key, 1, 0);
}

// meeting zhenzhu
if collision_circle(x,y, 50,obj_zhenzhu, false, false){
	instance_destroy(obj_meetingzhenzhu)
	instance_create_depth(x-340, y-240, -4000, obj_meetingzhenzhu)
	
	if keyboard_check_pressed(vk_space){
		instance_destroy(obj_zhenzhu)
	    
		instance_destroy(obj_meetingzhenzhu)
		audio_play_sound(snd_horse, 1, 0)
		global.horse = true	
	}
}else{ 
		instance_destroy(obj_meetingzhenzhu)
 
}

