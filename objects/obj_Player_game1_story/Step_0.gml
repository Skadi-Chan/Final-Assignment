/// @description Insert description here
// You can write your code in this editor

//the WASD moving control and checking if there's enough space to move
//if (keyboard_check(ord("W")) and place_free(x, y - collisionSpeed)){
//	y -= walkingspeed;
//	image_speed = walkingspeed / img_speed_divider
//	sprite_index = spr_player_move_up;
//}

if (keyboard_check(ord("A")) and place_free(x- collisionSpeed, y )){
	x -= walkingspeed;
	image_speed = walkingspeed / img_speed_divider
	sprite_index = spr_player_move_left;
}

//if (keyboard_check(ord("S")) and place_free(x, y + collisionSpeed)){
//	y += walkingspeed;
//	image_speed = walkingspeed / img_speed_divider
//	sprite_index = spr_player_move_down;
//}

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

//check if the player is close to a npc1


if collision_circle(x,y, 70,obj_npc3, false, false){
	
	if  keyboard_check_pressed(vk_space){ 
		instance_destroy(obj_npc3_talk1)
		instance_destroy(obj_npc3_talk2)
		instance_destroy(obj_npc3_talk3)
		
		if talked1 = false and talked2 = false and talked3=false{
			instance_create_depth(x-340, y-240, -4000, obj_npc3_talk1)
			audio_play_sound(snd_talk,1,0)
			talked1 = true
			
		}
		
		else if talked1 = true and talked2 = false and talked3 = false{
			instance_create_depth(x-340, y-240, -4000, obj_npc3_talk2)
			audio_play_sound(snd_talk,1,0)
			talked2 = true
		}
		
		else if talked1 = true and talked2 = true and talked3 = false{
			instance_create_depth(x-340, y-240, -5000, obj_npc3_talk3)
			audio_play_sound(snd_talk,1,0)
			talked3 = true
		}
		else if talked1 = true and talked2 = true and talked3 = true{
			
			audio_play_sound(snd_portal,1,0)
			room_goto(mini_game1_Screen)
		}
		
		}
}else{
		instance_destroy(obj_npc3_talk1)
		instance_destroy(obj_npc3_talk2)
		instance_destroy(obj_npc3_talk3)
}
