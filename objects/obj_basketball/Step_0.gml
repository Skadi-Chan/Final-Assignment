/// @description Insert description here
// You can write your code in this editor

if( x > room_width - 30 ){
	hspeed = -hspeed;
}

if(x < 30){
	hspeed = -hspeed;
}

if( y > room_height - 30){
	vspeed = -vspeed;
} 

if(y < 30){
	vspeed = -vspeed;
}