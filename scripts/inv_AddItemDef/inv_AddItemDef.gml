/// @desc Add item definition to itemDefinitions array
/// @param type Type Of Item Enum
/// @param spriteIndex Index of Sprite To Show In GUI
/// @param pickupSprite Sprite Pickup Name
/// @param pickupObject Object Pickup Name
/// @param name Name Of Item
/// @param amount Amount Of This Item Type We Currently Hold
/// @param script Script To Execute On Use
/// @param plantable If Item Is plantable
/// @param value Value Of Item
/// @param rarity Rarity Of Item


var _typeOfItem = argument0;
var _sprite     = argument1;
var _pickupSprite =argument2;
var _pickupObject =argument3;
var _name       = argument4;
var _amount     = argument5;
var _useScript  = argument6;
var _plantable  = argument7;
var _value	    = argument8;
var _rarity	    = argument9;


itemDefinitions[_typeOfItem, ItemProperties.sprite]     =_sprite;
itemDefinitions[_typeOfItem, ItemProperties.pickupSprite]  =_pickupSprite;
itemDefinitions[_typeOfItem, ItemProperties.pickupObject]  =_pickupObject;
itemDefinitions[_typeOfItem, ItemProperties.name]       =_name;
itemDefinitions[_typeOfItem, ItemProperties.amount]     =_amount;
itemDefinitions[_typeOfItem, ItemProperties.useScript]  =_useScript;
itemDefinitions[_typeOfItem, ItemProperties.plantable] =_plantable;
itemDefinitions[_typeOfItem, ItemProperties.value]		=_value;
itemDefinitions[_typeOfItem, ItemProperties.rarity]		=_rarity;