function writeIniControls(filepath){
	ini_open(filepath);
	
	ini_write_real("controls", "left1", global.kLeft[0]);
	ini_write_real("controls", "left2", global.kLeft[1]);
	ini_write_real("controls", "right1", global.kRight[0]);
	ini_write_real("controls", "right2", global.kRight[1]);
	ini_write_real("controls", "up1", global.kUp[0]);
	ini_write_real("controls", "up2", global.kUp[1]);
	ini_write_real("controls", "down1", global.kDown[0]);
	ini_write_real("controls", "down2", global.kDown[1]);
	ini_write_real("controls", "jump1", global.kJump[0]);
	ini_write_real("controls", "jump2", global.kJump[1]);
	ini_write_real("controls", "dash1", global.kDash[0]);
	ini_write_real("controls", "dash2", global.kDash[1]);
	ini_write_real("controls", "slash1", global.kSlash[0]);
	ini_write_real("controls", "slash2", global.kSlash[1]);
	ini_write_real("controls", "thrust1", global.kThrust[0]);
	ini_write_real("controls", "thrust2", global.kThrust[1]);
	ini_write_real("controls", "zoom1", global.kZoom[0]);
	ini_write_real("controls", "zoom2", global.kZoom[1]);
	
	ini_close();
}