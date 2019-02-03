/// @description Insert description here
// You can write your code in this editor
if instance_exists(FishingCatchBar)
{
FishingCatchBar.hp-=0.3;
}

//Win or lose 

if FishingCatchBar.hp<=0
{
with FishingBar
instance_destroy();

with FishingBait
instance_destroy();

with FishingCatchBar
instance_destroy();

ds_list_destroy(Object);
ds_list_destroy(Chance);

with Character
{
state=states.normal;	
}

instance_destroy();
}


else if FishingCatchBar.hp>=100
{
inv_AddItem(itemtype);

with FishingBar
instance_destroy();

with FishingBait
instance_destroy();

with FishingCatchBar
instance_destroy();

ds_list_destroy(Object);
ds_list_destroy(Chance);

with Character
{
state=states.normal;	
}

instance_destroy();

}