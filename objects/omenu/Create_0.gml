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
#macro optionsfile "option.ini"

guiX = display_get_gui_width();
guiY = display_get_gui_height();
guiMargin = 32;

menuX = guiX - guiMargin;
menuY = guiY - guiMargin;

menuSubscreen = menuSubscreens.main;

menuSelect = menuOptions.start;
menuSelected = pointer_null;
menuControls = true;

menuText = ["Start", "Continue", "Select level", "Controls", "Quit"];

menuCooldown = 0;

assignStep = 0;
//controls
	//keyboard - can make more modable?
readIniControls(optionsfile);

//efficiency??
menuKeyOptionsUpdate();