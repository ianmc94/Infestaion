/// @description Insert description here
// You can write your code in this editor
 
randomize();
randX = floor(random(room_width-10));

instance_create_depth(randX, room_height-900, 0, Obj_EnemyShip);

alarm[0] = spawnRate;

