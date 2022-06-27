enum menuOptions {
	start,
	cont,
	select,
	options,
	quit
}

enum menuSubscreens {
	main,
	select,
	options
}

#macro savefile "savefile.sav"
#macro optionsfile "options.ini"

guiX = display_get_gui_width();
guiY = display_get_gui_height();
guiMargin = 32;

menuX = guiX - guiMargin;
menuY = guiY - guiMargin;

menuSubscreen = menuSubscreens.main;

menuSelect = menuOptions.start;
menuSelected = pointer_null;
menuControl = true;

menuText = ["Start", "Continue", "Select level", "Controls", "Quit"];

menuCooldown = 0;

//controls
	//keyboard - can make more modable?
global.kLeft = [ord("A"), vk_left];
global.kRight = [ord("D"), vk_right];
global.kUp = [ord("W"), vk_up];
global.kDown = [ord("S"), vk_down];
global.kJump = [vk_space, 2];
global.kDash = [vk_shift, 2];
global.kSlash = [ord("Q"), 2];
global.kThrust = [ord("E"), 2];
global.kZoom = [ord("Z"), 2];

//efficiency??
menuTextOptions[0] = "Left: " + keyToString(global.kLeft[0]) + " | " + keyToString(global.kLeft[1]);
menuTextOptions[1] = "Right: " + keyToString(global.kRight[0]) + " | " + keyToString(global.kRight[1]);
menuTextOptions[2] = "Up: " + keyToString(global.kUp[0]) + " | " + keyToString(global.kUp[1]);
menuTextOptions[3] = "Down: " + keyToString(global.kDown[0]) + " | " + keyToString(global.kDown[1]);
menuTextOptions[4] = "Jump: " + keyToString(global.kJump[0]) + " | " + keyToString(global.kJump[1]);
menuTextOptions[5] = "Dash: " + keyToString(global.kDash[0]) + " | " + keyToString(global.kDash[1]);
menuTextOptions[6] = "Slash: " + keyToString(global.kSlash[0]) + " | " + keyToString(global.kSlash[1]);
menuTextOptions[7] = "Thrust: " + keyToString(global.kThrust[0]) + " | " + keyToString(global.kThrust[1]);
menuTextOptions[8] = "Zoom: " + keyToString(global.kZoom[0]) + " | " + keyToString(global.kZoom[1]);
menuTextOptions[9] = "Back to the main menu";