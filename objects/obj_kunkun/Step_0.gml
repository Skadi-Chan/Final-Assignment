/// @description Insert description here
// You can write your code in this editor

depth = -y


if collision_circle(x,y, 40,obj_Player, false, false){
	move_speed = 0
	image_speed = 0
	image_index = 0
} else if( x > 2600 ){
	hspeed = -move_speed
	image_speed = move_speed/6;
	sprite_index = spr_kunwalkingleft;
}

if(x < 2400){
	hspeed= move_speed;
	image_speed = move_speed/ 6;
	sprite_index = spr_kunwalkingright;
}


