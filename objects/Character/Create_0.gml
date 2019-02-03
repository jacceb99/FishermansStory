/// @description Insert description here
cDirection=0;
vsp=0;
hsp=0;
movespeed=2;




if room==r_PreGarden or room==r_PreHome
{
state=states.pre;	
}

else
{
state=states.normal;
}

fishy=0;


//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_character;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Johnny";

myPortraitTalk		= spr_portrait_character_idle;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_character_idle;


//Creating it's own hitbox
