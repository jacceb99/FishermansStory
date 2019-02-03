
#region Stop moving if a textbox exists

if(instance_exists(obj_textbox))
{
	
if cDirection==1 sprite_index=sCharacterIdleEast;	
	
else if cDirection==2 sprite_index=sCharacterIdleSouth;	
	
else if cDirection==3 sprite_index=sCharacterIdleWest;	
	
else if cDirection==4 sprite_index=sCharacterIdleNorth;	

exit;
}
#endregion

key_right =keyboard_check(ord("D"));
key_left =keyboard_check(ord("A"));
key_up= keyboard_check(ord("W"));
key_down=keyboard_check(ord("S"));

moveh = key_right-key_left;
hsp = moveh * movespeed;
movev =key_down-key_up;
vsp = movev * movespeed;



#region Setting sprites depending on which item your holding
if global.itemtype=="Fishing Rod"
{
if key_right {sprite_index=sCharacterRunningEastFishingRod; cDirection=1;}


else if key_down {sprite_index=sCharacterRunningSouthFishingRod;cDirection=2;}

else if key_left {sprite_index=sCharacterRunningWestFishingRod;cDirection=3;}

else if key_up {sprite_index=sCharacterRunningNorthFishingRod;cDirection=4;}
	
	
else
{
	if cDirection==1 sprite_index=sCharacterIdleEastFishingRod;	
	
else if cDirection==2 sprite_index=sCharacterIdleSouthFishingRod;	
	
else if cDirection==3 sprite_index=sCharacterIdleWestFishingRod;	
	
else if cDirection==4 sprite_index=sCharacterIdleNorthFishingRod;	
	
}
	
	
}

else
{

if key_right {sprite_index=sCharacterRunningEast; cDirection=1;}


else if key_down {sprite_index=sCharacterRunningSouth;cDirection=2;}

else if key_left {sprite_index=sCharacterRunningWest;cDirection=3;}

else if key_up {sprite_index=sCharacterRunningNorth;cDirection=4;}

else 
{
if cDirection==1 sprite_index=sCharacterIdleEast;	
	
else if cDirection==2 sprite_index=sCharacterIdleSouth;	
	
else if cDirection==3 sprite_index=sCharacterIdleWest;	
	
else if cDirection==4 sprite_index=sCharacterIdleNorth;	

}
}
#endregion

#region collision

if (place_meeting(x+hsp,y,Collision))
{
    while(!place_meeting(x+sign(hsp),y,Collision))
    {
    x += sign(hsp);
    }
    hsp = 0;
}


//Vertical collision
if (place_meeting(x,y+vsp,Collision))
{
    while(!place_meeting(x,y+sign(vsp),Collision))
    {
    y += sign(vsp);
    }

     vsp= 0;
}

y += vsp;
x += hsp;

#endregion



depth=-y;


