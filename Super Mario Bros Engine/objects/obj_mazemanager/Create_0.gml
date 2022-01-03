/// @description Castle Maze Manager

/*
//  This object uses creation code
//
//      rx               = Camera Restart position
//      maze_index       = Maze index
//      maze_way[0...99] = Number of passages the maze has
*/

//Default variables
rx = 0;
maze_index = 0;
maze_way[maze_index] = noone;

//Passages check
numb = 0;

//Do not draw backgrounds
if (instance_number(obj_castle) == 0)
    instance_create(0,0,obj_castle);

/* */
/*  */
