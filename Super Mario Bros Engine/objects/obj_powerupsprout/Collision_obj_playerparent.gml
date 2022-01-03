/// @description Collect the item if sprouting

//Mushroom
if (sprite_index == spr_mushroom)
    event_perform_object(obj_mushroom,ev_collision,obj_playerparent);

//Fireflower
else if (sprite_index == spr_fireflower)
    event_perform_object(obj_fireflower,ev_collision,obj_playerparent);
    
//Starman
else if (sprite_index == spr_starman)
    event_perform_object(obj_starman,ev_collision,obj_playerparent);
    
//1-UP
else if (sprite_index == spr_1up)
    event_perform_object(obj_1up,ev_collision,obj_playerparent);
    
//Poison
else if (sprite_index == spr_poison)
    event_perform_object(obj_poison,ev_collision,obj_playerparent);

