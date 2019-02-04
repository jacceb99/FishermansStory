
if(place_meeting(x,y,Character)){
	
	//if I haven't already created my textbox, make one:
	if(keyboard_check_pressed(interact_key)){
		if(instance_exists(obj_textbox)){ exit; }	//exit if a textbox already exists
		event_user(0);								//if you need variables to update for text
		//Hand over variables
	}}