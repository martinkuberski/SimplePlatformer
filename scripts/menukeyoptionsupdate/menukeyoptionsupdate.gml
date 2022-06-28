// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function menuKeyOptionsUpdate(){
	menuTextOptions[0] = "Left: " + keyToString(global.kLeft[0]) + " | " + keyToString(global.kLeft[1]);
	menuTextOptions[1] = "Right: " + keyToString(global.kRight[0]) + " | " + keyToString(global.kRight[1]);
	menuTextOptions[2] = "Up: " + keyToString(global.kUp[0]) + " | " + keyToString(global.kUp[1]);
	menuTextOptions[3] = "Down: " + keyToString(global.kDown[0]) + " | " + keyToString(global.kDown[1]);
	menuTextOptions[4] = "Jump: " + keyToString(global.kJump[0]) + " | " + keyToString(global.kJump[1]);
	menuTextOptions[5] = "Dash: " + keyToString(global.kDash[0]) + " | " + keyToString(global.kDash[1]);
	menuTextOptions[6] = "Slash: " + keyToString(global.kSlash[0]) + " | " + keyToString(global.kSlash[1]);
	menuTextOptions[7] = "Thrust: " + keyToString(global.kThrust[0]) + " | " + keyToString(global.kThrust[1]);
	menuTextOptions[8] = "Zoom: " + keyToString(global.kZoom[0]) + " | " + keyToString(global.kZoom[1]);
	menuTextOptions[9] = "Save and go back to the main menu";
}