/// @description Insert description here
// You can write your code in this editor
if (y>=1150&&instance_exists(Obj_PlayerShip)) 
{
	instance_destroy();
}

if shootingCooldown==false
{
	instance_create_layer(x,y, "Instances", Obj_enemyLazer)
	shootingCooldown = true;
	alarm[0] = random_range (15, 45);
}

