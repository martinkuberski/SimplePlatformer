switch (menuSubscreen) {
	case menuSubscreens.main:
		menuDraw(menuText);
		break;
	case menuSubscreens.options:
		menuDraw(menuTextOptions);
		break;
	case menuSubscreens.select:
		menuDraw(menuTextLevels);
		break;
	default:
		menuDraw(menuText);
		break;
}