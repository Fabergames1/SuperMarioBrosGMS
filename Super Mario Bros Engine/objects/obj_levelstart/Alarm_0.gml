/// @description Go to the current level

//If a checkpoint has been touched, go to the given checkpoint
if (global.checkpoint != noone)
    room_goto(global.checkpointroom);

//Otherwise
else {

    switch (global.pack) {
    
        //Original 1985
        case (0):
        switch (global.world) {
        
            //World 1-1
            case ("1-1"): room_goto(rm_w1_1); break;
            
            //World 1-2
            case ("1-2"): room_goto(rm_w1_2); break;
            
            //World 1-3
            case ("1-3"): room_goto(rm_w1_3); break;
            
            //World 1-4
            case ("1-4"): room_goto(rm_w1_4); break;
            
            //World 2-1
            case ("2-1"): room_goto(rm_w2_1); break;
            
            //World 2-2
            case ("2-2"): room_goto(rm_w2_2); break;
            
            //World 2-3
            case ("2-3"): room_goto(rm_w2_3); break;
            
            //World 2-4
            case ("2-4"): room_goto(rm_w2_4); break;
        }
        break;
        
        //Lost Levels
        case (1):
        break;
        
        //Letter Worlds
        case (2):
        break;
        
        //Special Levels
        case (3):
        break;
        
        //Super Duper Levels
        case (4):
        switch (global.world) {
        
            //World 1-1
            case ("1-1"): room_goto(rm_d1_1); break;
        }
        break;
        
        //Custom Levels
        case (5):
        break;
    }
}

