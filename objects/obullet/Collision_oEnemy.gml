if(other.state != states.dead && !collide) {
with(other) hitDMG(other.bulletDamage);
if(bulletSpeed > 0) x = other.bbox_left - sprite_width;
if(bulletSpeed < 0) x = other.bbox_right - sprite_width;
collide = 1;
}