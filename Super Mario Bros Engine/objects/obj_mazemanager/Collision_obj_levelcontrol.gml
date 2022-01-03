/// @description If the maze is correct

//If all checkpoints have been check, destroy them
if (numb == array_length_1d(maze_index)+1)
    instance_destroy();
    
//Otherwise
else {

    //If the camera is below the room
    if (obj_levelcontrol.y == 432) {
    
        //Reset enemies
        with (obj_reset) alarm[0] = 2;
    
        //With the player
        if (instance_exists(obj_playerparent)) {
        
            with (obj_playerparent) {
            
                x = self.x;
                y = self.y-224;
            }
        }
        
        //Reset numb
        numb = 0;
        
        //With the camera
        with (obj_levelcontrol) y = 0;
        
        //Reset wrong ways
        with (obj_wrongway) check = false;
        
        //Reset correct ways
        for (i=0; i<array_length_1d(maze_index); i++)
            with (maze_way[i]) check = false;
    }
    
    //Otherwise
    else {
    
        //Reset background position
        with (obj_castle) mazeview -= 512 / 1.5;
        
        //Reset camera position
        obj_levelcontrol.x = rx;
        obj_levelcontrol.y = 432;
        obj_levelcontrol.alarm[6] = 3;
        obj_levelcontrol.barrier = true;
    
        //Reset the player position
        if (instance_exists(obj_playerparent)) {
        
            with (obj_playerparent) {
            
                x = ((__view_get( e__VW.XView, 0 )*-1)+self.x)+obj_levelcontrol.x-128
                y = self.y+224;
            }
        }
        
        //Reset view
        __view_set( e__VW.XView, view_current, 0 );
    }
}

