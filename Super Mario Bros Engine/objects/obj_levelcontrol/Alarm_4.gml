/// @description Kill the player

instance_create(obj_playerparent.x, obj_playerparent.y, obj_player_dead);
with (obj_playerparent) instance_destroy();
exit;

