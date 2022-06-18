if(other.state != states.dead) {
with(other) hitDMG(other.bulletDamage);
instance_destroy();
}