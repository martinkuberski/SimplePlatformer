//state
state = states.normal;
//movement constants
accel = 1;
iceAccel = 0.25;
walkSpd = 3;
jumpSpd = 6;
dashMult = 2;
//other constants
spriteIdle = [sEnemyIdle, sEnemyRun, sEnemyJump, sEnemyDead];
spriteGun = [sEnemyIdleG, sEnemyRunG, sEnemyJumpG, sEnemyDead];
itemDrop = pointer_null;
//movement variables
xSpd = 0;
ySpd = 0;
xSpdTarget = 0;
currentAccel = 1;
dash = 0;
jump = 0;
//other variables
hp = 10;
weapon = 0;
currentSprite = spriteIdle;
timer = 0;
left = 0;
right = 0;
hitflash = 0;
weapon = weapons.none;
//flags
canJump = 0;
