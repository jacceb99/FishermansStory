/// @description Insert description here
// You can write your code in this editor


switch(itemtype)
{
	#region POND
case ItemType.guppy: //Jumpy boi Super easy to catch just introduce the concepts of floppy boi
vspeed=-5; 
time=random_range(1,60);
break; 

case ItemType.trout: //Very slow lvl 1 fish
switch(irandom(1))
{
case 0:
vspeed=0.5;
break;
case 1:
vspeed=-0.5;
break;	
}

time=random_range(1,80);
break;

case ItemType.rocketFish: //Just gonna be super fast up and down, Slow timer because he's still gonna be easy to catch
switch(irandom(1))
{
case 0:
vspeed=irandom_range(2,3);
break;
case 1:
vspeed=irandom_range(-2,-3);
break;	
}
time=random_range(60,100);
break;

case ItemType.neonBarb: //A fast fish, but has very short alarm so it will basically jiggle pretty much in 1 place for average Joe
case 0:
vspeed=irandom_range(1,1.25);
break;
case 1:
vspeed=irandom_range(-1,-1.25);
break;	

time=random_range(1,20);
break;
#endregion

	#region OCEAN
case ItemType.sardine:
switch(irandom(1))
{
case 0:
vspeed=0.5;
break;
case 1:
vspeed=-0.5;
break;	
}
time=random_range(1,80);
break;

case ItemType.clam:
vspeed=-2.5;
time=random_range(1,80);
break;

case ItemType.tuna:
switch(irandom(1))
{
case 0:
vspeed=random_range(0.25,0.75);
break;
case 1:
vspeed=random_range(-0.25,-0.75);
break;	
}

time=random_range(1,90);
break;

case ItemType.jellyFish:
vspeed=random_range(-0.25,0.25);
//vspeed=irandom_range(-1,-3);
time=random_range(1,100);
break;

case ItemType.seaBass:
switch(irandom(1))
{
case 0:
vspeed=1;
break;
case 1:
vspeed=-1;
break;	
}
time=random_range(1,40);
break;

case ItemType.devilFish:
switch(irandom(1))
{
case 0:
vspeed=random_range(1,1.5);
break;
case 1:
vspeed=random_range(1,1.5);
break;	
}
time=random_range(1,40);
break;

case ItemType.lobster:
switch(irandom(1))
{
case 0:
vspeed=random_range(1,1.5);
break;
case 1:
vspeed=random_range(1,1.5);
break;	
}
time=random_range(1,40);
break;

#endregion

}
alarm[0]=time;

show_debug_message(vspeed);
