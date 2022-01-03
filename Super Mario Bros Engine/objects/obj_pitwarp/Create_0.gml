/// @description Warps the player to a different room

/*
**  This item uses creation code!
**
**  postchange = Pick from below: (Optional)
**      0: None
**      1: Warp
**      2: Climb
**
**  postx = New x coordinate
**  posty = New y coordinate
**  myroom = Destination room
*/

//Default Values:
postchange = -1;
postx = 0;
posty = 0;
myroom = room_next(room);

//Whether the player fell down
ready = 0;

//Draw bonus icons
drawbonus = false;

/* */
/*  */
