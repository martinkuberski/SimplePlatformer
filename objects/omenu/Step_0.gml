switch (menuSubscreen){
	
#region main 
	case menuSubscreens.main:
		menuControl(menuOptions.start, menuOptions.quit)
		switch menuSelected {
			case menuOptions.start:
				room_goto_next();
				break;
			case menuOptions.options:
				menuSubscreen = menuSubscreens.options;
				menuSelected = pointer_null;
				menuSelect = 0;
				menuControl = true;
				break;
			case menuOptions.quit:
				game_end();
				break;
			default:
				menuSelected = pointer_null;
				menuControl = true;
				break;
		}
		break;
#endregion main

#region options
	case menuSubscreens.options:
		menuControl(0, 9);
		switch menuSelected {
			case 9:
				menuSubscreen = menuSubscreens.main;
				menuSelected = pointer_null;
				menuSelect = 0;
				menuControl = true;
				break;
			default:
				menuSelected = pointer_null;
				menuControl = true;
				break;
		}
		break;
#endregion options
}