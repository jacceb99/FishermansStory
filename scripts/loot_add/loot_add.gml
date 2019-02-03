/// @function loot_add(object,chance)
/// @param {int} object Object To Add
/// @param {int] chance Chance For Object To Drop
///@description Adds object to loot table with chance to drop

var obj=argument0;
var chance=argument1;

ds_list_add(FishingGame.Object,obj);
ds_list_add(FishingGame.Chance,chance);
FishingGame.Tickets +=chance;

