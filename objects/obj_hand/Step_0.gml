/// @description Insert description here
// You can write your code in this editor

x= clamp(x,0,room_width); 
y = clamp(y,0,room_height); 



if keyboard_check(vk_right) {
	hspeed = spd
} else if keyboard_check(vk_left) { 
	hspeed = -spd
} else if keyboard_check(vk_down) {
	vspeed = spd
} else if keyboard_check(vk_up) {
	vspeed = -spd
} else {
	speed = 0
}
