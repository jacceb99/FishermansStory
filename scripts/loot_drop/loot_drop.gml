/// @function loot_drop();
/// @description Returns id of loot to drop

var ticket = irandom_range(1,FishingGame.Tickets);
var tab=0;
for (var i=0; i<ds_list_size(FishingGame.Object);i++)
{
tab+= FishingGame.Chance [| i];
if (tab>=ticket) return FishingGame.Object [| i];
}