function menuControl(first, last){
	input();
	if(menuControls) {
		if(up) {
			if(menuSelect = first) menuSelect = last;
			else menuSelect--;
		}
		if(down) {
			if(menuSelect = last) menuSelect = first;
			else menuSelect++;
		}
		if(slash || thrust || keyboard_check_pressed(vk_enter)) {
			menuSelected = menuSelect;
			menuControls = false;
		}
	}
}