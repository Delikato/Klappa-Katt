/// @description Insert description here
// You can write your code in this editor
enum states {
idle,
wander,
alert,
attack,

}

state = states.idle;

counter = 0;

spd = .5;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd,my_dir);

cat_clap = 0;

//my_slash = noone; 
