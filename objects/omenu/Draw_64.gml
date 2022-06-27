switch (menuSubscreen) {
	case menuSubscreens.main:
		menuDraw(menuText);
		break;
	case menuSubscreens.options:
		menuDraw(menuTextOptions);
		break;
	default:
		menuDraw(menuText);
		break;
}