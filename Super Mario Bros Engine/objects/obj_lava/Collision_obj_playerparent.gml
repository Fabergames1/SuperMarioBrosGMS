/// @description Insta-kill the player

instance_create(other.x, other.y, obj_player_dead);
with (other) instance_destroy();
exit;

