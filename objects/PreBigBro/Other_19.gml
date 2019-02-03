//These are the dialouge options that happen when you talk to him


reset_dialogue_defaults();


	switch(line){
	case 0:
	
		// If you haven't looted the fishing rod and talk to him
		//Line 0
		var i = 0;
		myText[i]		= "Well What are you waiting for? Grab that Fishing rod by the house";
		mySpeaker[i]	= id;
		
	break;
	
	
	case 1:
	
		var i = 0;
		myText[i]		= "Face the water and have the fishing rod marked in your inventory, then press F on your keyboard";
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= "Then when you feel the fish press F again and focus your shi to catch the fish";
		mySpeaker[i]	= id;
	
	
	
	break;
	
		
		
		
	}
		
		
		
		