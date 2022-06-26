enum menuOptions {
	start,
	cont,
	select,
	options,
	quit
}

guiX = display_get_gui_width();
guiY = display_get_gui_height();
guiMargin = 32;

menuX = guiX - guiMargin;
menuY = guiY - guiMargin;

menuSelect = menuOptions.start;
menuSelected = pointer_null;
menuControl = true;

menuText = ["Start", "Continue", "Select level", "Options", "Quit"];

menuCooldown = 0;