function readIniControls(filepath){
	ini_open(filepath);
	global.kLeft = [ini_read_real("controls", "left1", ord("A")), ini_read_real("controls", "left2", vk_left)];
	global.kRight = [ini_read_real("controls", "right1", ord("D")), ini_read_real("controls", "right2", vk_right)];
	global.kUp = [ini_read_real("controls", "up1", ord("W")), ini_read_real("controls", "up2", vk_up)];
	global.kDown = [ini_read_real("controls", "down1", ord("S")), ini_read_real("controls", "down2", vk_down)];
	global.kJump = [ini_read_real("controls", "jump1", vk_space), ini_read_real("controls", "jump2", 2)];
	global.kDash = [ini_read_real("controls", "dash1", vk_shift), ini_read_real("controls", "dash2", 2)];
	global.kSlash = [ini_read_real("controls", "slash1", ord("Q")), ini_read_real("controls", "slash2", 2)];
	global.kThrust = [ini_read_real("controls", "thrust1", ord("E")), ini_read_real("controls", "thrust2", 2)];
	global.kZoom = [ini_read_real("controls", "zoom1", ord("Z")), ini_read_real("controls", "zoom2", 2)];
	ini_close();
}

//defaults
/*global.kLeft = [ord("A"), vk_left];
global.kRight = [ord("D"), vk_right];
global.kUp = [ord("W"), vk_up];
global.kDown = [ord("S"), vk_down];
global.kJump = [vk_space, 2];
global.kDash = [vk_shift, 2];
global.kSlash = [ord("Q"), 2];
global.kThrust = [ord("E"), 2];
global.kZoom = [ord("Z"), 2];*/