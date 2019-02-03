/// @description Insert description here
// You can write your code in this editor

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

var mX=0;
var mY=0;

var mX = mX div cellSize;
var mY = mY div cellSize;

mX= mX*cellSize;
mY= mY*cellSize;

draw_sprite(InventoryManager.itemDefinitions[inventory[5], ItemProperties.pickupSprite],0,mX+(cellSize/2),mY+(cellSize/2));