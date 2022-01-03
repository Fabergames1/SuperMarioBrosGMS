/// @description Set skin and background based on player

global.skin = 1;
if (global.player == 0)
    __background_set( e__BG.Index, 0, bgr_bonus_mario );
else
    __background_set( e__BG.Index, 0, bgr_bonus_luigi );