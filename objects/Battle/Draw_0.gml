/// @description Insert description here
// You can write your code in this editor
if instance_exists(BattleSlot) //Drawing the HP
{
draw_set_font(fnt_hp);
draw_set_halign(fa_center);
draw_text(BattleSlot.x,BattleSlot.y-15,string(hp)+"/20" );
}