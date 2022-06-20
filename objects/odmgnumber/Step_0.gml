if(instance_exists(target)) {
	x=target.x;
}
y -= ySpd;
alpha -= fadeSpd;
if ((alpha) < 0.01) instance_destroy();