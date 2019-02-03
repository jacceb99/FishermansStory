///@description respawns crop
///@arg grid_x
///@arg grid_y
///@arg crop_type
///@arg days_old

var xx=argument0*cellSize;
var yy=argument1*cellSize;
var cropType=argument2;

//Checking what kind of crop it was
switch cropType
{
case "Tomato Crop":
var crop=TomatoCrop;
break;
	
}


//Create the instance
var inst = instance_create_layer(xx, yy,"Instances",crop);
ds_crops_instances[# argument0, argument1]=inst;
show_debug_message("respawned a" + cropType);

//Give the crop its characteristics
with (inst){
	daysOld=argument3;

	
}
return inst;