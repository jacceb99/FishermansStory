/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
#region the screen fade

if init==1
{

a = clamp(a+(fade*0.02),0,3);
draw_sprite_ext(sFade,-1,0,0,1*scale,1*scale,0,c_white,a);

if (a==1) //Screen is completely blacks
{
with Character
{
x=32;
y=96;
state=states.battle;
}
room_goto(r_Battle);




fade= -1;
}

if ((a==0) or (a <0)) && (fade ==-1)
{
init =0;
}

}
#endregion


//drawing the hp


