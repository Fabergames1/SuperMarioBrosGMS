/// @description Create the appropiate point object based on player's height

//5000 points
if (obj_player_goal.ystart+16 <= y+34)
    with (instance_create(x+16,y+144,obj_score_goal)) event_user(8);
    
//2000 points
else if (obj_player_goal.ystart+16 <= y+80)
    with (instance_create(x+16,y+144,obj_score_goal)) event_user(6);
    
//800 points
else if (obj_player_goal.ystart+16 <= y+104)
    with (instance_create(x+16,y+144,obj_score_goal)) event_user(4);
    
//400 points
else if (obj_player_goal.ystart+16 <= y+144)
    with (instance_create(x+16,y+144,obj_score_goal)) event_user(2);
    
//100 points
else
    with (instance_create(x+16,y+144,obj_score_goal)) event_user(0);

