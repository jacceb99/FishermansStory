/// @description Insert description here
// You can write your code in this editor

/* Snapping items to grid and then displaying color of square and item
 Displaying the actual grid(Hidden atm)
/*
draw_set_alpha(0.3);
var xx=0;

var r =roomWidth div cellSize;
repeat(r){
draw_line_color(xx,0,xx,roomHeight, c_white,c_white);
xx += cellSize;
	
}

var yy=0;

var r =roomHeight div cellSize;
repeat(r){
draw_line_color(0,yy,roomWidth,yy, c_white,c_white);
yy += cellSize;
	
}

draw_set_alpha(1);



//snapping item to grid
var mX = mouse_x div cellSize;
var mY = mouse_y div cellSize;
mX= mX*cellSize;
mY= mY*cellSize;

//Getting variables for seeing if it's soil



//Color if it's soil or not


var lay_id = layer_get_id("tSoil");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id,mouse_x,mouse_y);

var c = c_red;
if data != 0 c=c_lime;


if (InventoryManager.itemDefinitions[inventory[CurrentSlot], ItemProperties.plantable] =1) //Jacce de är så här du får upp current slotten,
																							//en 2 dimisionell array, itemtype sedan itemproperty, båda krävs för att republiken ska vinna
{
	
var spriteWidth = sprite_get_width(InventoryManager.itemDefinitions[inventory[CurrentSlot], ItemProperties.mouseSprite]);
var spriteHeight = sprite_get_height(InventoryManager.itemDefinitions[inventory[CurrentSlot], ItemProperties.mouseSprite]);

draw_set_alpha(0.3);
draw_rectangle_color(mX,mY,mX+cellSize,mY+cellSize,c,c,c,c,false);
draw_set_alpha(1);

draw_sprite(InventoryManager.itemDefinitions[inventory[CurrentSlot], ItemProperties.mouseSprite],0,mX+(cellSize/2)-spriteWidth/2,mY+(cellSize/2)-spriteHeight/2);
}


/*

FadingText(Character.x,Character.y,"You got a fish!");