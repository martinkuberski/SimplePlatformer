/// @description Insert description here
// You can write your code in this editor
if(hitflash) shader_set(shaderHitflash);
if(doubleJump) {
	image_xscale *= 1.1;
	image_yscale *= 1.1;
	shader_set(shaderPowerup);
	draw_self();
	shader_reset();
	image_xscale /= 1.1;
	image_yscale /= 1.1;
	draw_self();
} else draw_self();