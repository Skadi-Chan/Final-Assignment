/// @description Insert description here
// You can write your code in this editor

//the WASD moving control and checking if there's enough space to move
if (keyboard_check(ord("W")) and place_free(x, y - collisionSpeed)){
	y -= walkingspeed;
	image_speed = walkingspeed / img_speed_divider
	sprite_index = spr_player_move_up;
}

if (keyboard_check(ord("A")) and place_free(x- collisionSpeed, y )){
	x -= walkingspeed;
	image_speed = walkingspeed / img_speed_divider
	sprite_index = spr_player_move_left;
}

if (keyboard_check(ord("S")) and place_free(x, y + collisionSpeed)){
	y += walkingspeed;
	image_speed = walkingspeed / img_speed_divider
	sprite_index = spr_player_move_down;
}

if (keyboard_check(ord("D")) and place_free(x + collisionSpeed, y )){
	x += walkingspeed;
	image_speed = walkingspeed / img_speed_divider
	sprite_index = spr_player_move_right;
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

//check if the player is close to lucy
if collision_circle(x,y, 50,obj_lucy, false, false){
	
	if  keyboard_check_pressed(vk_space){ 
		instance_destroy(obj_lucy_without_keyandmama)
		instance_destroy(obj_lucy_without_onlykey)
		instance_destroy(obj_lucy_with_everything)
		
		
		if global.key = false and global.talkwithmama = false{
			instance_create_depth(x-340, y-240, -4000, obj_lucy_without_keyandmama)
			audio_play_sound(snd_talk,1,0)
		}
		
		else if global.key = false and global.talkwithmama = true{
			instance_create_depth(x-340, y-240, -4000, obj_lucy_without_onlykey)
			audio_play_sound(snd_talk,1,0)
		}
		else if global.key = true and global.talkwithmama = true{
			instance_create_depth(x-340, y-240, -4000, obj_lucy_with_everything)
			audio_play_sound(snd_talk,1,0)
		}
	}
}else{
		instance_destroy(obj_lucy_without_keyandmama)
		instance_destroy(obj_lucy_without_onlykey)
		instance_destroy(obj_lucy_with_everything)
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

//talking with mama
if collision_circle(x,y, 70,obj_mama, false, false){
	
	if  keyboard_check_pressed(vk_space){ 
		instance_destroy(obj_mama_without_keyandtalk)
		instance_destroy(obj_mama_without_onlykey)
		instance_destroy(obj_mama_with_everything)
		
		if global.key = false and global.talkwithmama = false{
			instance_create_depth(x-340, y-240, -4000, obj_mama_without_keyandtalk)
			audio_play_sound(snd_talk,1,0)
			global.talkwithmama = true
		}
		
		else if global.key = false and global.talkwithmama = true{
			instance_create_depth(x-340, y-240, -4000, obj_mama_without_onlykey)
			audio_play_sound(snd_talk,1,0)
		}
		
		else if global.key = true and global.talkwithmama = true{
			instance_create_depth(x-340, y-240, -5000, obj_mama_with_everything)
			audio_play_sound(snd_talk,1,0)
		}
		
		}
}else{
		instance_destroy(obj_mama_without_keyandtalk)
		instance_destroy(obj_mama_without_onlykey)
		instance_destroy(obj_mama_with_everything)
}



//talking to NPC2 at the starting page


if place_meeting(x,y, obj_key){
	instance_destroy(obj_key)
	global.key = true
	audio_play_sound(snd_key, 1, 0);
}


if place_meeting(x,y,obj_roof) and global.key = true{
	
	instance_destroy(obj_roof)
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
		room_goto(Last_screen)
	}
}else{ 
		instance_destroy(obj_meetingzhenzhu)
 
}


if collision_circle(x,y, 70,obj_npc2, false, false){
	
	if  keyboard_check_pressed(vk_space){ 
		instance_destroy(obj_npc2_talk1)
		instance_destroy(obj_npc2_talk2)
		instance_destroy(obj_npc2_talk3)
		
		if talked1 = false and talked2 = false and talked3=false{
			instance_create_depth(x-340, y-240, -4000, obj_npc2_talk1)
			audio_play_sound(snd_talk,1,0)
			talked1 = true
			
		}
		
		else if talked1 = true and talked2 = false and talked3 = false{
			instance_create_depth(x-340, y-240, -4000, obj_npc2_talk2)
			audio_play_sound(snd_talk,1,0)
			talked2 = true
		}
		
		else if talked1 = true and talked2 = true and talked3 = false{
			instance_create_depth(x-340, y-240, -5000, obj_npc2_talk3)
			audio_play_sound(snd_talk,1,0)
			talked3 = true
		}
		else if talked1 = true and talked2 = true and talked3 = true{
			
			audio_play_sound(snd_portal,1,0)
			room_goto(horse_Screen)
		}
		
		}
}else{
		instance_destroy(obj_npc2_talk1)
		instance_destroy(obj_npc2_talk2)
		instance_destroy(obj_npc2_talk3)
}
