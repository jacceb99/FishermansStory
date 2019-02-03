/// @description Draw Inventory


if room !=r_Battle

{
#region Drawing inventory and items within it
draw_sprite_ext(sItemHolder,-1,guiHolderPosX,guiHolderPosY,scale,scale,0,c_white,1);

for (var i = 0; i< MAX_ACTIVE_INV_ITEMS;i++)
{
itemDefIndex= inventory[i]

	if (itemDefIndex != ItemType.none)
	{
	draw_sprite_ext(itemDefinitions[itemDefIndex, ItemProperties.sprite],
	-1,
	(guiHolderPosX + guiHolderPad) + (guiHolderSlotOffsetX*i),
	 guiHolderPosY + guiHolderPad,
	 scale,scale,0,c_white,1
	 );
	 
	 draw_set_font(fBit);
	 draw_text(
	((guiHolderPosX + guiHolderPad) + (guiHolderSlotOffsetX*i)+(guiHolderSlotX)),
	 guiHolderPosY + guiHolderPad + 10,
	 string(itemDefinitions[itemDefIndex,ItemProperties.amount]));
	
	}	
}
#endregion

#region Creating and drawing The outline for the item your on
//Selecting item with scroll wheel
if keyboard_check_pressed(vk_right)
{
	
	if CurrentSlot=MAX_ACTIVE_INV_ITEMS -1
	{
	CurrentSlot=0;	
	}
	
else
CurrentSlot+=1;

}

	else if keyboard_check_pressed(vk_left)
	{
	if CurrentSlot=0
	{
	CurrentSlot=MAX_ACTIVE_INV_ITEMS;	
	}
	CurrentSlot-=1;	
	}


draw_sprite_ext(sItemHolderOutline,
-1,
(guiHolderPosX + guiHolderPad)+(guiHolderSlotOffsetX*CurrentSlot),
guiHolderPosY + guiHolderPad,scale,scale,0,c_white,1);


#endregion

#region Drawing the cash counter

 draw_set_font(fBit);
draw_sprite(sCoin,0,coindrawX,cashdrawY)
draw_set_halign(fa_right);
draw_text(cashdrawX,cashdrawY,cash);
draw_set_halign(fa_center);
#endregion


}
