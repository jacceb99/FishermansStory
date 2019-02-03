/// @desc Attempt to add an item to inventory
/// @param


//Think of 20 linear boxes, Now we're gonna look for the first box that is empty (none)

var _type = argument0;
var indexAddedAt =-2;

#region Creating fading text(Different color text depending on rarity)
var color=c_white;
switch ((InventoryManager.itemDefinitions[_type,ItemProperties.rarity]))
{
case "Common":
var color=c_white;
break;

case "Uncommon":
var color =c_yellow;
break;

case "Rare":
var color = c_blue;
break;


case "Epic":
var color=c_red;
break;

	
case "Beyond":
var color=c_purple;
break;
}

FadingText(Character.x,Character.y-20,InventoryManager.itemDefinitions[_type, ItemProperties.name],color);


#endregion



show_debug_message((InventoryManager.itemDefinitions[_type,ItemProperties.rarity]))
//If the type is not already in the inventory, it will take up a new box
if (array_find_index(InventoryManager.inventory,_type) ==-1)
{
	indexAddedAt = array_replace_value(InventoryManager.inventory, ItemType.none,_type); //array_replace_value(which system, Oldvalue,new value)
														//The empty box is replaced for an item
}

if (indexAddedAt != -1) //It returns -1 when inventory is full and the item is not in our bag
{
InventoryManager.itemDefinitions[_type, ItemProperties.amount] +=1;

return(indexAddedAt != -1);//Returns TRUE if it wasn't =-1, so if it is TRUE destroy the item on the ground
	
}



