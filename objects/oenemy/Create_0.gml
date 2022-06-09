//state
state = states.normal;
//movement constants
accel = 1;
iceAccel = 0.25;
walkSpd = 3;
jumpSpd = 6;
dashMult = 2;
//other constants
spriteIdle = [sEnemyIdle, sEnemyRun, sEnemyJump];
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
//flags
canJump = 0;
