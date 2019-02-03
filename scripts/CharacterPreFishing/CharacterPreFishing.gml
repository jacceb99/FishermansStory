var fheight=sprite_get_height(sFishingSlot);
var fwidth=sprite_get_width(sFishingSlot);
var cheight=sprite_get_height(sCharacterPreIdleSouth);
var cwidth=sprite_get_width(sCharacterPreIdleSouth);
switch Character.cDirection
{
case 1:
ani1=sCharacterPreSouthFishing1;
ani2=sCharacterPreSouthFishing2;
ani3=sCharacterPreSouthFishing3;
break;
	
case 2:
ani1=sCharacterPreSouthFishing1;
ani2=sCharacterPreSouthFishing2;
ani3=sCharacterPreSouthFishing3;
ani4=sCharacterPreSouthFishing4;
break;

case 3:
sprite_index=sChefIdleSouth;
break;

case 4:
sprite_index=sChefIdleSouth;
break;
	
	
}


if sprite_index!=ani1 && sprite_index!=ani2 && sprite_index!=ani3 && sprite_index!=ani4
	{
	sprite_index=ani1;
	}






	if sprite_index==ani1 && image_index>image_number-1
	{
	sprite_index=ani2;
	alarm[0]=random_range(120,400);
	}

	if keyboard_check_pressed(ord("F"))
	{

		if sprite_index==ani3
		{
			
			if !instance_exists(FishingGame) 
			{
			instance_create_depth(Character.x-(fwidth+cwidth),Character.y-((fheight-cheight)/2),-5,FishingGame);
			FadingText(Character.x+sprite_get_width(sCharacterIdleSouth)/2,Character.y-10,"Gotcha!",c_green);
			}
		}

		else if sprite_index=ani2 //You press F at the wrong time setting the animation for failing to fish up the fish
		{
		sprite_index=ani4;
		}
	}

//When the fail animation stops go back to normal state
if sprite_index=ani4 && image_index>image_number-1
{
	
state=states.pre;	
}