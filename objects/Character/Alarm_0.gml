/// @description Insert description here
// You can write your code in this editor

if !instance_exists(FishingGame)
{
//Sets the sprite to you got napp sprite and then back again within half a second if the user doesen't press mouse right
	if state=states.fishing
	{

		if sprite_index=sCharacterFishing3
		{
		sprite_index=sCharacterFishing2;
		alarm[0]=random_range(120,400);
		}

		else if sprite_index=sCharacterFishing2
		{
		sprite_index=sCharacterFishing3;
			alarm[0]=30;
		}
	}

}