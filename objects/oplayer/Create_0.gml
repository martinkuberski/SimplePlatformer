//macros
#macro deadzone 0.2
//state
state = states.normal;
//movement constants
grv = 0.4;
accel = 1;
iceAccel = 0.25;
walkSpd = 3;
dashMult = 2;
jumpSpd = 6;
//other constants
spriteIdle = [sPlayerIdle, sPlayerRun, sPlayerJump];
spriteCane = [sPlayerIdleC, sPlayerRunC, sPlayerJumpC];
//movement variables
xSpd = 0;
ySpd = 0;
currentAccel = 1;
//other variables
weapon = 0;
currentSprite = spriteIdle;
//flags
canJump = 0;
canDoubleJump = 0;
doubleJump = 0;
controller = 0;
//big = 0;

