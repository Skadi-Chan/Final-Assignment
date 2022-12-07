/// @description Insert description here
// You can write your code in this editor

depth = -y


if collision_circle(x,y, 300,obj_Player, false, false) and global.key = true{
	
		instance_destroy(obj_reminder)
		instance_create_depth(obj_Player.x -340, obj_Player.y-240, -4000, obj_reminder)
		
	
}else{
		instance_destroy(obj_reminder)
}