//macros
#macro deadzone 0.2
//state
state = states.normal;
//movement constants
global.grv = 0.4;
accel = 1;
iceAccel = 0.25;
walkSpd = 3;
dashMult = 2;
jumpSpd = 6;
//other constants
spriteIdle = [sPlayerIdle, sPlayerRun, sPlayerJump, sPlayerDead];
spriteCane = [sPlayerIdleC, sPlayerRunC, sPlayerJumpC, sPlayerDead];
spriteGun = [sPlayerIdleG, sPlayerRunG, sPlayerJumpG, sPlayerDead];
//movement variables
xSpd = 0;
ySpd = 0;
currentAccel = 1;
//other variables
hp = 50;
weapon = weapons.none;
currentSprite = spriteIdle;
hitByAttack = ds_list_create();
hitflash = 0;
//flags
canJump = 0;
canDoubleJump = 0;
doubleJump = 0;
controller = 0;
//big = 0;

