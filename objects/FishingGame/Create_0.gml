/// @description Insert description here
// You can write your code in this editor

#region Setting the biomes and the chances of different fish
randomize();
sh=sprite_get_height(sFishingSlot);
sw=sprite_get_width(sFishingSlot);

biome="Pond";

show_debug_message(biome);


Object =ds_list_create();
Chance =ds_list_create();
Tickets=0;

switch(biome)
{
case "Pond":
loot_add(ItemType.guppy,40);
loot_add(ItemType.trout,40);
loot_add(ItemType.rocketFish,10);
loot_add(ItemType.neonBarb,10);

break;

case "Ocean":
loot_add(ItemType.clam,28);
loot_add(ItemType.sardine,28);
loot_add(ItemType.tuna,28);
loot_add(ItemType.jellyFish,5);
loot_add(ItemType.seaBass,5);
loot_add(ItemType.lobster,3);
loot_add(ItemType.devilFish,3);
break;
}
itemtype=loot_drop();
ds_list_destroy(Object);
ds_list_destroy(Chance);
#endregion


#region Creating all the components

instance_create_depth(x,y-((sh/2))-2,-10,FishingBar);


with instance_create_depth((x+(sw/2))-sprite_get_width(sFishingBait),y+120-sprite_get_height(sFishingBait),-15,FishingBait)
{
itemtype=FishingGame.itemtype;
sprite_index=InventoryManager.itemDefinitions[itemtype, ItemProperties.pickupSprite];
}

with instance_create_depth(x+sw+5,y,-15,FishingCatchBar)
{hp=30;}



#endregion
