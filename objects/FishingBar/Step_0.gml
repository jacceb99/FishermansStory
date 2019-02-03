/// @description Insert description here
// You can write your code in this editor
key_up= keyboard_check(vk_up);
key_down= keyboard_check(vk_down);


movev =0 - key_up;
vspeed = movev * movespeed;

if (vspeed < 10) vspeed += grav;



//Lock bottom
if y >= posY
{
y=posY;
}

//Lock top
if y<posY-91
{
y=posY-91;	
}


//Progressing the catch bar

if place_meeting(x,y,FishingBait)
{
if instance_exists(FishingCatchBar)
{
with FishingCatchBar
{
hp+=0.7;
}
	
}
	
	
	
}