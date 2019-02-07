/// @description Insert description here
// You can write your code in this editor
switch (BattleSequence)
{
#region Mojni
case "Mojni":



instance_create_depth(room_width+(room_width/8),room_height/8*spikeCount,-200,MojniSpike);


	if spikePhase==1
	{
	spikeCount+=2;
	alarm[0]=20;
	}
	
	else if spikePhase==2
	{
	spikeCount-=2;
	alarm[0]=20;
	}
	
	else if spikePhase==3 or spikePhase==5
	{
	spikeCount+=1;	
	alarm[0]=20;
	}
	
	else if spikePhase==4 or spikePhase==6
	{
	spikeCount-=1;	
	alarm[0]=20;
	}
	
	
	if spikeCount==10 && spikePhase=1
	{
	spikePhase=2;
	}
	
	else if spikeCount==0 && spikePhase=2
	{
	spikePhase=3;
	}
	
	else if spikeCount==9 && spikePhase=3
	{
	spikePhase=4;
	}
	
	else if spikeCount==-1 && spikePhase=4
	{
	spikePhase=5;
	}
	
	else if spikeCount==9 && spikePhase=5
	{
	spikePhase=6;
	}
	
	else if spikeCount==-1 && spikePhase=6
	{
	spikePhase=0;
	alarm[9]=120;
	}
	#endregion
	
	
	
	
	
	
	
	
	
	
	
	
}
