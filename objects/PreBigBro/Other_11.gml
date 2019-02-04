/// @description Dialouge 2

reset_dialogue_defaults();

	
	// First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Now get over here and let's catch some fishies.";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Go over to the pond and while you are facing the water and have the Fishing Rod marked in your inventory, press F on your keyboard.";
		myEffects[i]	= [68,1, 80,0];
		myTextCol[i]	= [68, c_red, 80, c_white];
		mySpeaker[i]	= id;
	
		i++;
		myText[i]		= "Then when you feel the fish press F again and focus your shi to catch the fish.";
		mySpeaker[i]	= id;
	