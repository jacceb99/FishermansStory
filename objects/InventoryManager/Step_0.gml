/// @description Check for keyboard input

//Using the item that is currently selected


if Character.state=states.normal or Character.state=states.pre
{

if keyboard_check_released(ord("F"))
{
var _itemtype = inventory[CurrentSlot];
inv_UseItem(_itemtype);
}
}

#region When L is pressed a "day" has passed and the tomatos should grow
if (instance_exists(CropParent) and keyboard_check_pressed(ord("L")))
{
with CropParent
{
	if growthStage <maxGrowthStage
	{
daysOld+=1;
growthStage= daysOld div growthStageDuration
	}
else
{
growthStage=maxGrowthStage;
	
}

}
}

#endregion

#region When G is pressed the player will drop an itemm
if keyboard_check_pressed(ord("G"))
{
if InventoryManager.itemDefinitions[inventory[CurrentSlot], ItemProperties.pickupObject]!=0 //Checks if the slot isnt empty
{
//Setting the differences in x and y depending on the characters direction
if Character.cDirection=1
{
var xx= 0;
var yy= -10;
}

else if Character.cDirection=2
{
var xx= -10;
var yy= 10;
}

else if Character.cDirection=3
{
var xx= -10;
var yy= -10;
}

else if Character.cDirection=4
{
var xx= -10;
var yy= -10;
}





var inst =instance_create_depth(Character.x+xx,Character.y+yy,0,InventoryManager.itemDefinitions[inventory[CurrentSlot], ItemProperties.pickupObject]);

with inst
{
cDir=Character.cDirection; //Passing on the character direction
thrown=1;
}

	inv_RemoveItem(inventory[CurrentSlot]);
}
	
	
}
#endregion

//Sets a global variable to the current itemtype so we can utilize it in other objects(Character for example)

global.itemtype=InventoryManager.itemDefinitions[inventory[CurrentSlot], ItemProperties.name];