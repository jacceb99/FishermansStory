var _type = argument0;

//if itemDefinitions[_type, ItemProperties.consumable] = 1 //Taking this away because it's not needed, remove item is now called in the use scripts.
{

	var _indexOfGivenType= array_find_index(inventory,_type);

	if (_indexOfGivenType != -1)
	{
	itemDefinitions[_type, ItemProperties.amount] -=1;
 
	if (itemDefinitions[_type, ItemProperties.amount] <=0)
	inventory[_indexOfGivenType] = ItemType.none;	 
 
 
	}
}