/// @description Initialize inventory
scale=4;
guiHolderWidth       = sprite_get_width(sItemHolder)*scale;
guiHolderHeight      = sprite_get_height(sItemHolder)*scale;
guiHolderPosX        = (view_get_wport(0) / 2) - (guiHolderWidth / 2);
guiHolderPosY		 = view_get_hport(0)-(guiHolderHeight);
guiHolderPad	     = 2*scale;
guiHolderSlotOffsetX = (16*scale)+(guiHolderPad);
guiHolderSlotX=16*scale;
cursorwidth=sprite_get_width(sCursor)/2;
CurrentSlot = 0;
cashdrawX=(view_get_wport(0)/100)*98;
cashdrawY=(view_get_hport(0)/100);
coindrawX=(view_get_wport(0)/100)*99;
cash=0;
inv_Initialize();

cursor_sprite=sCursor;
//Grid part
cellSize=32;

//Creating DS grid to check if crops are already there
ds_crops_instances=-1;

//Creating DS grid to save crop locations
ds_crops_data=ds_grid_create(4,1);
ds_grid_clear(ds_crops_data,-1);

//TEsting fading text
alpha=1;
once=0;