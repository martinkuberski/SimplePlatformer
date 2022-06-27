function menuControl(first, last){
	if(menuControl) {
		input();
		if(up) {
			if(menuSelect = first) menuSelect = last;
			else menuSelect--;
		}
		if(down) {
			if(menuSelect = last) menuSelect = first;
			else menuSelect++;
		}
		if(slash || thrust) {
			menuSelected = menuSelect;
			menuControl = false;
		}
	}
}