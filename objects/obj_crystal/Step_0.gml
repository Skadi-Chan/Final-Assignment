/// @description Insert description here
// You can write your code in this editor
effect_create_below(ef_flare,x,y, 2, c_white);
if place_meeting(x,y,obj_Player){
	room_goto(mini_game1_story)
}