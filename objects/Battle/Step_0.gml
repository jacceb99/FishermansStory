/// @description Insert description here
// You can write your code in this editor



//In the beginning of every fight there is a Pre Textbox, and before every attack there is an attack Textbox

//This is step 1 in the battle
if (a==1) && !instance_exists(BattleSlot)   //Screen is completely blacks
{
#region Here is where the correct enemy is spawned and the pre box

switch (BattleSequence)
{
case "Mojni":
instance_create_depth(room_width/8*7,room_height/2,10,Mojni);
create_textevent("That's got to be the ugliest thing i have ever seen in my entire life.",-1);
start=1;
break;

}
#endregion
	
instance_create_depth(room_width/6,(room_height/2-sprite_get_height(sBattleSlot)/2),100,BattleSlot);
}


//Step 2 If the pretextbox is gone

if !instance_exists(obj_textbox) && start==1
{
event_user(0); //This will spawn the Attack Textbox 
start=0;
}



if attack=1 && (!instance_exists(obj_textbox)) //After the attack Textbox initiating the actual attack
{
	event_user(1)

	
}