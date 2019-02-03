/// @description Insert description here
// You can write your code in this editor


tY-=0.02;
alpha-=1/room_speed;

draw_set_alpha(alpha);
draw_set_halign(fa_middle);
draw_set_font(fBit);

draw_set_color(color);


if alpha>0
{
draw_text(tX,tY,text);
}

else
{
instance_destroy();	
}

draw_set_alpha(1);
draw_set_color(c_white);