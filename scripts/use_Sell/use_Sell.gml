var price=itemDefinitions[_type, ItemProperties.value];


with Character
    if place_meeting(x, y, SellZone)
        with other {
            cash=cash+price;
			inv_RemoveItem(_type);
        }


