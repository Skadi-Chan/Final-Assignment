/// @description Insert description here
// You can write your code in this editor

depth = -y


if collision_circle(x,y, 150,obj_Player, false, false) and global.born = false{
	
		instance_destroy(obj_lost)
		instance_create_depth(obj_Player.x -340, obj_Player.y-240, -4000, obj_lost)
		
		if keyboard_check_pressed(vk_space){
			instance_destroy(obj_lost)
			global.born = true
		}
		
	
}else{
		instance_destroy(obj_lost)
		
}