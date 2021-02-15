/// @description Insert description here
// You can write your code in this editor


x= clamp(x,0,room_width); 
y = clamp(y,0,room_height); 

 counter +=1; 
 x += moveX;
 y += moveY;

 if(counter>= room_speed*0.5) {
	
		my_dir = irandom_range(0,359);
		moveX = lengthdir_x(spd, my_dir);
		moveY = lengthdir_y(spd,my_dir);
	 counter = 0;
	 if(moveX != 0) image_xscale = sign(moveX);
	}
