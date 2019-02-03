/// @description Insert description here
// You can write your code in this editor


switch (state)
{
case states.normal: CharacterNormal(); break;
case states.pre: CharacterPre(); break;
case states.prefishing: CharacterPreFishing(); break;
case states.fishing: CharacterFishing(); break;
case states.battle: CharacterBattle(); break;
}




/*
if keyboard_check_released(ord("G"))
{
create_dialogue("Well well well brother",-1)

}