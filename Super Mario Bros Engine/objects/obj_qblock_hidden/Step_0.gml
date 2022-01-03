/// @description Make it visible

//Check for the player
var player = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+2,obj_playerparent,0,0);

//If the player is in position
if (player)
&& (player.vspeed < 0)
&& (player.x > bbox_left) 
&& (player.x < bbox_right)
&& (player.bbox_top > bbox_bottom+1+player.vspeed) {

    //Create a new block and bump it
    with (instance_create(x,y,obj_qblock)) {
    
        //Block has been hit
        state = 1;
        
        //Bump the block
        vspeed = -2;
        
        //Hereby item
        sprout = other.sprout;
        
        //Hereby block specific events
        event_user(0);
    }
    
    //Destroy
    instance_destroy();
}

