/// @description Insert description here
// You can write your code in this editor

//Lock bottom
if y > posY
{
y=posY;
}

//Lock top
else if y<(posY-barLength)
{
y=posY-barLength;	
}


if itemtype=ItemType.clam or itemtype=ItemType.guppy
{
if (vspeed < 10) vspeed += grav;	
}
