/// @description Insert description here
// You can write your code in this editor
uKey = keyboard_check(ord("W"));
dKey = keyboard_check(ord("S"));
lKey = keyboard_check(ord("A"));
rKey = keyboard_check(ord("D"));
// shooting key
shootKey = keyboard_check(vk_space);
//ship controls
if uKey {
	y-=spd;
}
if dKey {
	y+=spd;
}
if lKey {
	x-=spd;
}
if rKey {
	x+=spd;
}
//shooting button with alarm
if (shootKey&&cooldown==false)
{
	instance_create_layer(x,y, "Instances", Obj_lazer)
	cooldown = true;
	alarm[0] = 15;
}
//room x boundary teleport 
if (x<=-32) {
  x = room_width
}
else if (x> room_width) {
	x = 1;
}
//y boundry clamp
y = clamp(y, 0+sprite_height/2, 900)

if (lives<=0) {
	room_goto(Rm_GameOver)
}

if (score >= 5) && (difficultyIncrease == true) {
	instance_create_layer(x,y, "Instances" ,Obj_EnemyShipSpawner)
	difficultyIncrease = false;
}

show_debug_message(lives)