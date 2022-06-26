if(menuControl) {
input();
//menuCooldown--;
//if(menuCooldown <= 0) {
	if(up) {
		if(menuSelect = menuOptions.start) menuSelect = menuOptions.quit;
		else menuSelect--;
		//menuCooldown = 2 * room_speed;
	}
	if(down) {
		if(menuSelect = menuOptions.quit) menuSelect = menuOptions.start;
		else menuSelect++;
		//menuCooldown = 2 * room_speed;
	}
//}
}

if(slash || thrust) {
	menuSelected = menuSelect;
	menuControl = false;
}

switch menuSelected {
	case menuOptions.start:
		room_goto_next();
		break;
	case menuOptions.quit:
		game_end();
		break;
	default:
		menuSelected = pointer_null;
		menuControl = true;
		break;
}