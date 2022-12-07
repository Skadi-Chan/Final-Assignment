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

