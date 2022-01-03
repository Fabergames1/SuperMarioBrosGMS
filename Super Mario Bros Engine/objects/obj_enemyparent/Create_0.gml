/// @description The parent object for all enemies

//How vulnerable is this enemy to various items?
//0: Normal
//1: Immune to fireballs
//99: Invincible
//100: Invincible + Ignore projectiles
vulnerable = 0;

//How vulnerable is this enemy to the player?
//0: Normal
//1: Hurt Mario
//-1: Phase through Mario
stomp = 0;

//How many points should the enemy give when killed with an item
//0: 100
//1: 200
//2: 400
//3: 500
//4: 800
//5: 1000
//6: 2000
//7: 4000
//8: 5000
//9: 8000
//10: 1-UP
handicap = 0;
handicap_stomp = 0;

//Does this enemy have a palette
palette_index = noone;

//Facing direction
xscale = 1;

