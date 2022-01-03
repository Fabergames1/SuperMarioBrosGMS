/// @description Make the player vulnerable if it exists

if (!instance_exists(obj_playerparent))
exit;
    obj_playerparent.invulnerable = false;

