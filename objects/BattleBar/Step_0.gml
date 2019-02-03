/// @description Insert description here
// You can write your code in this editor
key_up= mouse_check_button(mb_left);
key_down= mouse_check_button(mb_right);


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


