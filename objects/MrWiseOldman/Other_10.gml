//---You can update variables here!---//
reset_dialogue_defaults();

/*
switch(choice_variable){
	case -1:*/
	
	// First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "...";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "...";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "CAN YOU NOT SEE THAT I'M MEDITATING?";
		myEffects[i]	= [1,2, 37,0];
		myTextCol[i]	= [1, c_red, 37, c_aqua];
		mySpeaker[i]	= id;
		
		
		//Line 3
		i++;
		myText[i]		= ["Yes", "No"];
		myTypes[i]		= 1;
		mySpeaker[i]	= Character;
		myNextLine[i]	= [4,5];
		
		//Line 4
		i++;
		myText[i]		= "Well don't disturb me then.";
		myNextLine[i]	= -1;
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "Are you blind?";
		myNextLine[i]	= -1;
		mySpeaker[i]	= id;
		
		
		
		
		
		
		
		