
if room=r_PreGarden or r_PreHome //If it's in the pre
{
var lay_id = layer_get_id("Water");
var map_id = layer_tilemap_get_id(lay_id);

switch Character.cDirection
{
case 1:
var data = tilemap_get_at_pixel(map_id,Character.x+9,Character.y); //EAST
break;
	
case 2:
var data = tilemap_get_at_pixel(map_id,Character.x,Character.y+10); //SOUTH
break;

case 3:
var data = tilemap_get_at_pixel(map_id,Character.x-10,Character.y); //WEST
break;

case 4:
var data = tilemap_get_at_pixel(map_id,Character.x,Character.y-1); //NORTH
break;
	
	
}

if data!=0 //If there is water infront of us
{
	with Character
{
state=states.prefishing;	
}

}


else
	{
	
	}



	
	
}


else
{

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
}