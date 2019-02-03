/// @description Collect Item

if thrown!=1
{


var success= inv_AddItem(myItemType);
if (success)
instance_destroy();

else
{
//"Inventory full!"	
}
}