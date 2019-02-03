
cheight=sprite_get_height(sCharacterIdleSouthFishingRod);
var lay_id = layer_get_id("Water");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id,Character.x,Character.y+40);


if data!=0 //If there is water infront of us
{
with Character
{
state=states.fishing;	
}

}


else
	{
	
	}
