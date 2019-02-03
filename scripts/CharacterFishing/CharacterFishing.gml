var fheight=sprite_get_height(sFishingSlot);
var fwidth=sprite_get_width(sFishingSlot);
var cheight=sprite_get_height(sCharacter);
var cwidth=sprite_get_width(sCharacter);



	if sprite_index!=sCharacterFishing && sprite_index!=sCharacterFishing2 && sprite_index!=sCharacterFishing3
	{
	sprite_index=sCharacterFishing;
	}



	if sprite_index==sCharacterFishing && image_index>image_number-1
	{
	sprite_index=sCharacterFishing2;
	alarm[0]=random_range(120,400);
	}

	if keyboard_check_pressed(ord("F"))
	{

		if sprite_index==sCharacterFishing3
		{
			
			if !instance_exists(FishingGame) 
			{
			instance_create_depth(Character.x-(fwidth+cwidth),Character.y-((fheight-cheight)/2),-5,FishingGame);
			FadingText(Character.x+sprite_get_width(sCharacterIdleSouth)/2,Character.y-10,"Gotcha!",c_green);
			}
		}

		else if sprite_index=sCharacterFishing2
		{
		state=states.normal;
		}
	}
