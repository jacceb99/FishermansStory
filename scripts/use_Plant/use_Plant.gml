var gx=mouse_x div cellSize;
var gy=mouse_y div cellSize;
var i_grid=InventoryManager.ds_crops_instances;
var cell = i_grid[# gx,gy];


//If the spot is open for the crop
if cell == -1{

xx=gx*cellSize;
yy=gy*cellSize;	


//Check for Soil
var lay_id = layer_get_id("tSoil");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id,mouse_x,mouse_y);


if (data==0){
	show_debug_message("there is no soil here.");
	return false;
}

else
{
show_debug_message("there is soil here.");
}

//Create the crop and remove the item

var seed = InventoryManager.itemDefinitions[inventory[CurrentSlot], ItemProperties.name]

show_debug_message(seed);

switch (seed){
case "Tomato Seeds":
var crop=TomatoCrop;
break;

case "":

break;
}


var inst =instance_create_layer(xx,yy,"Instances",crop);
i_grid[# gx,gy]=inst;

show_debug_message(_type);
inv_RemoveItem(_type);
}
else
{
show_debug_message("There is already something there")
return false;
}