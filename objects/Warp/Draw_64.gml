/// @description Insert description here
// You can write your code in this editor
if init==1
{

a = clamp(a+(fade*0.02),0,3);
draw_sprite_ext(sFade,-1,0,0,1*scale,1*scale,0,c_white,a);

if (a==1)
{
Character.x=target_x;
Character.y=target_y;
room_goto(target_r);
fade= -1;
}

if ((a==0) or (a <0)) && (fade ==-1)
{

instance_destroy();
}

}

else if init==0
{
	if room!=currentRoom
	{
	instance_destroy();
	}
}



if room=r_Battle
{
instance_destroy();	
}