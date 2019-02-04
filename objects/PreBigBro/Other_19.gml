//These are the dialouge options that happen when you talk to him


reset_dialogue_defaults();


	switch(line){
	case 0:
	
		// If you haven't looted the fishing rod and talk to him
		//Line 0
		var i = 0;
		myText[i]		= "Well what are you waiting for? Grab that Fishing Rod by the house.";
		myEffects[i]	= [42,1, 53,0];
		myTextCol[i]	= [42, c_red, 53, c_white];
		mySpeaker[i]	= id;
		
	break;
	
	
	case 1:
	
		var i = 0;
		myText[i]		= "Face the water and have the Fishing Rod marked in your inventory, then press F on your keyboard.";
		myEffects[i]	= [28,1, 40,0];
		myTextCol[i]	= [28, c_red, 40, c_white];
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= "Then when you feel the fish press F again and focus your shi to catch the fish.";
		mySpeaker[i]	= id;
	
	
	
	break;
	
		
		
		
	}
		
		
		
		