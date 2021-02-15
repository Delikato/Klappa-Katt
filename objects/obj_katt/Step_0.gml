/// @description Insert description here
// You can write your code in this editor
 
 if (state == states.idle) {
 #region Idle
 
 //behaviour 
 counter +=1; 
 
 //transition
 if(counter >= room_speed*3) {
	var change = choose(0,1);
	switch(change) {
	case 0: state = states.wander;
	case 1: counter = 0; break;
		}
	}
 if (collision_circle(x,y,64 ,obj_hand, false, false)) {
	state = states.alert;
	}
 sprite_index = spr_katt;
	#endregion
  }

else if (state == states.wander) {
 #region Wander
 
 //behaviour
 counter +=1; 
 x += moveX;
 y += moveY;
 //transition triggers
 if(counter>= room_speed*3) {
	var change = choose(0,1);
	switch(change) {
	case 0: state = states.idle;
	case 1: 
		my_dir = irandom_range(0,359);
		moveX = lengthdir_x(spd, my_dir);
		moveY = lengthdir_y(spd,my_dir);
	 counter = 0;
	}
 }
  if (collision_circle(x,y,128, obj_hand, false, false)) {
	state = states.alert;
	}
	//Sprite
	 sprite_index = spr_wander;
	// image_xscale = sign(moveX);
	if(moveX != 0) image_xscale = sign(moveX);

 	#endregion
	 }
	 
 else if (state == states.alert) {
 #region alert
 //Behaviour
 	my_dir = point_direction(x,y,obj_hand.x, obj_hand.y);
		moveX = lengthdir_x(spd, my_dir);
		moveY = lengthdir_y(spd,my_dir);
		x += moveX;
		y += moveY;
 
 //transision triggers
	if (!collision_circle(x,y,128, obj_hand, false, false)) {
	state = states.idle;
	}
	if (collision_circle(x,y,32, obj_hand, false, false)) {
	state = states.attack;
	}
	//sprite
	sprite_index = spr_wander;
	//image_xscale = sign(moveX);
	if(moveX != 0) image_xscale = sign(moveX);
	#endregion
 }
 
  else if (state == states.attack) {
 #region Attack
	
	
	
	/*if(my_slash==noone) {
	my_slash = instance_create_layer(x + image_xscale*16,y, "instances", obj_slash);
	my_slash.creator = id;
	my_slash.image_xscale = image_xscale;
	image_index = 0; 
	}
*/
	//transision triggers
	if (image_index > image_number - 1) {
		state = states.alert; 
		}

	//sprite

	sprite_index = spr_alert; 
	
#endregion
 
  }
  
if (cat_clap >= 5) {
 instance_change(obj_klappadkatt, true);
 instance_create_depth(irandom_range(0,600),irandom_range(0,600),depth,obj_katt);  
  }