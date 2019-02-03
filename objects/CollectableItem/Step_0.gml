/// @description Insert description here
// You can write your code in this editor
if thrown=0
{
y = anchorY + sin(timer*frequency)*amplitude;
timer++;
}


else if thrown=1
{
if hspeed==0
{
	
	if cDir=1 or cDir=3
	{
	grav=0.08;
	yPos=y+fallDistance;
	}
	
	else if cDir=2 or cDir=4
	{
	grav=0.08;
	xPos=x+fallDistance;	
	}
	
	
}
	
	
	
	
if cDir =1
{
hspeed=2.5;
vspeed+=grav;
}

else if cDir =2
{
hspeed+=grav;
vspeed=2.5;
}


else if cDir=3
{
hspeed=-2.5;
vspeed+=grav;
}

else if cDir =4
{
hspeed+=grav;
vspeed=-2.5;
}




if (cDir=1 or cDir=3)
{
if y>yPos
{

hspeed=0;
vspeed=0;
anchorY=y;
thrown=0;
}
}

else if (cDir=2 or cDir=4)
{
if x>xPos 
{
hspeed=0;
vspeed=0;
anchorY=y;
thrown=0;
}
	
}


}