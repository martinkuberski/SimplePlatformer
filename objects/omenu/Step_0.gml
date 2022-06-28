switch (menuSubscreen){
	
#region main 
	case menuSubscreens.main:
		menuControl(menuOptions.start, menuOptions.quit);
		switch menuSelected {
			case menuOptions.start:
				room_goto_next();
				break;
			case menuOptions.select:
				menuSubscreen = menuSubscreens.select;
				menuSelected = pointer_null;
				menuSelect = 0;
				menuControls = true;
				break;
			case menuOptions.options:
				menuSubscreen = menuSubscreens.options;
				menuSelected = pointer_null;
				menuSelect = 0;
				menuControls = true;
				break;
			case menuOptions.quit:
				game_end();
				break;
			default:
				menuSelected = pointer_null;
				menuControls = true;
				break;
		}
		break;
#endregion main

#region select
	case menuSubscreens.select:
		menuControl(0, 3);
		switch menuSelected {
			case 0:
				room_goto(Room1);
				break;
			case 1:
				room_goto(Room2);
				break;
			case 2:
				room_goto(Room3);
				break;
			case 3:
				menuSubscreen = menuSubscreens.main;
				menuSelected = pointer_null;
				menuSelect = 0;
				menuControls = true;
				break;
			default:
				menuSelected = pointer_null;
				menuControls = true;
				break;
		}
		break;
#endregion select

#region options
	case menuSubscreens.options:
		menuControl(0, 9);
		switch menuSelected {
			case 0:
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kLeft[0] = 2;
					else global.kLeft[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kLeft[1] = 2; 
					else global.kLeft[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 1: 
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kRight[0] = 2;
					else global.kRight[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kRight[1] = 2; 
					else global.kRight[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 2:
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kUp[0] = 2;
					else global.kUp[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kUp[1] = 2; 
					else global.kUp[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 3:
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kDown[0] = 2;
					else global.kDown[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kDown[1] = 2; 
					else global.kDown[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 4:
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kJump[0] = 2;
					else global.kJump[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kJump[1] = 2; 
					else global.kJump[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 5:
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kDash[0] = 2;
					else global.kDash[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kDash[1] = 2; 
					else global.kDash[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 6:
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kSlash[0] = 2;
					else global.kSlash[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kSlash[1] = 2; 
					else global.kSlash[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 7:
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kThrust[0] = 2;
					else global.kThrust[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kThrust[1] = 2; 
					else global.kThrust[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 8:
				if(!slash && !thrust && !keyboard_check_pressed(vk_enter) && assignStep == 0) {
					assignStep = 1;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 1) {
					if(keyboard_key == vk_escape) global.kZoom[0] = 2;
					else global.kZoom[0] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 2;
					break;
				}
				if(keyboard_check_pressed(vk_anykey)) && (assignStep == 2) {
					if(keyboard_key == vk_escape) global.kZoom[1] = 2; 
					else global.kZoom[1] = keyboard_key;
					menuKeyOptionsUpdate();
					assignStep = 0;
					menuSelected = pointer_null;
					menuControls = true;
				}
				break;
			case 9:
				writeIniControls(optionsfile);
				menuSubscreen = menuSubscreens.main;
				menuSelected = pointer_null;
				menuSelect = 0;
				menuControls = true;
				break;
			default:
				menuSelected = pointer_null;
				menuControls = true;
				break;
		}
		break;
#endregion options
}