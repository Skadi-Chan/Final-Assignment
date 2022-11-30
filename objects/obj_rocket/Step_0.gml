/// @description Insert description here
// You can write your code in this editor

//set the renewed speed for every frame
vspeed *= 0;
hspeed *= 0;

//set the control for the rocket
if(keyboard_check(key_up)){
	vspeed -= wasd_speed;
}

if(keyboard_check(key_down)){
	vspeed += wasd_speed;
}

if(keyboard_check(key_right)){
	hspeed += wasd_speed;
}

if(keyboard_check(key_left)){
	hspeed -= wasd_speed;
}



//make the rocket stay in bound and end the game when it reaches the top
if( y > room_height){
	y = room_height;
}else if(y < 0){
	room_goto(rm_shoting_screen);
}

if( x > room_width){
	x = room_width/2;
}

if( x < 0){
	x = room_width/2;
}

//the collision in code 
if position_meeting(x,y,obj_star){
	y = room_height;
}
